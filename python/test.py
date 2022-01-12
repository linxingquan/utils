#!/usr/bin/env python2

class MemcacheMixin(object):
    @classmethod
    def by_id(cls, doc_id, slave_ok=None, fields=None, *args, **kwargs):
        prefix = "from MemcacheMixin -"
        params = [
            {"cls": cls},
            {"doc_id": doc_id},
            {"slave_ok": slave_ok},
            {"fields": fields},
            {"args": args},
            {"kwargs": kwargs},
        ]
        print prefix, "call super", params
        super(MemcacheMixin, cls).by_id(
            doc_id, slave_ok, fields=fields, *args, **kwargs
        )

class MongoMixin(object):
    @classmethod
    def by_id(
        cls,
        doc_id,
        slave_ok=None,
        fields=None,
        allow_async=True,
        comment=None,
        timeout_value=30,
        max_time_ms=None,
        strict=None,
        defer=False,
        **kwargs
    ):
        prefix = "from MongoMixin -"
        params = [
            {"cls": cls},
            {"doc_id": doc_id},
            {"slave_ok": slave_ok},
            {"fields": fields},
            {"allow_async": allow_async},
            {"comment": comment},
            {"timeout_value": timeout_value},
            {"max_time_ms": max_time_ms},
            {"strict": strict},
            {"defer": defer},
            {"kwargs": kwargs},
        ]
        print prefix, params

class MyClaz(MemcacheMixin, MongoMixin):
    pass

doc_id = 1
slave_ok = "slave_ok"
fields = "f1"
allow_async = "allow_async"
MyClaz.by_id(doc_id, slave_ok,)