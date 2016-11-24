db.address_books = new Meteor.Collection('address_books')



db.address_books._simpleSchema = new SimpleSchema

    owner:
        type: String,
        autoform:
            type: "hidden",
            defaultValue: ->
                return Meteor.userId();
    group:
        type: String,
        autoform:
            type: "select",
            options: ()->
                groups = db.address_groups.find().fetch();
                op = new Array();
                groups.forEach (g)->
                    op.push({label: g.name, value: g._id})

                return op;
    name:
        type: String,
    email:
        type: String,

    created:
        type: Date,
        optional: true
    created_by:
        type: String,
        optional: true
    modified:
        type: Date,
        optional: true
    modified_by:
        type: String,
        optional: true


db.address_books.helpers
    group_name: ->
        group = db.address_groups.findOne({_id: this.group})
        return group?.name;

if Meteor.isClient

    db.address_books._simpleSchema.i18n("address_books")

if Meteor.isServer
    db.address_books.before.insert (userId, doc) ->
        if not /^([A-Z0-9\.\-\_\+])*([A-Z0-9\+\-\_])+\@[A-Z0-9]+([\-][A-Z0-9]+)*([\.][A-Z0-9\-]+){1,8}$/i.test(doc.email)
            throw new Meteor.Error(400, "email_format_error");

        # 同一个分组中不能重复添加相同的email
        exists = db.address_books.find({owner: Meteor.userId(), email: doc.email, group: doc.group})
        if exists.count() > 0
            throw new Meteor.Error(400, "steedos_contacts_error_contact_exists")
            
    db.address_books.before.update (userId, doc, fieldNames, modifier, options) ->
        if modifier.$set.email
            if not /^([A-Z0-9\.\-\_\+])*([A-Z0-9\+\-\_])+\@[A-Z0-9]+([\-][A-Z0-9]+)*([\.][A-Z0-9\-]+){1,8}$/i.test(modifier.$set.email)
                throw new Meteor.Error(400, "email_format_error");


db.address_books.attachSchema(db.address_books._simpleSchema)
