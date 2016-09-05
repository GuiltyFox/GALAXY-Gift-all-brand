.class public Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "ObjectIdReferenceProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x757aab3130223adfL


# instance fields
.field private _forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 25
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 26
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 32
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 33
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 39
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 40
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 41
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v0

    if-eqz v0, :cond_16

    :cond_c
    const/4 v0, 0x1

    .line 76
    :goto_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_d .. :try_end_14} :catch_18

    move-result-object v0

    .line 82
    :goto_15
    return-object v0

    .line 74
    :cond_16
    const/4 v0, 0x0

    goto :goto_d

    .line 77
    :catch_18
    move-exception v1

    .line 78
    if-nez v0, :cond_23

    .line 79
    const-string/jumbo v0, "Unresolved forward reference but no identity info."

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 81
    :cond_23
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->getRoid()Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v0

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->appendReferring(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;)V

    .line 82
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->_forward:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method
