.class public final Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;
.super Ljava/lang/Object;
.source "CollectionDeserializer.java"


# instance fields
.field private _accumulator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;",
            ">;"
        }
    .end annotation
.end field

.field private final _elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final _result:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    .line 302
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_elementType:Ljava/lang/Class;

    .line 303
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_result:Ljava/util/Collection;

    .line 304
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 309
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_result:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    :goto_d
    return-void

    .line 311
    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;

    .line 312
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->next:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public handleUnresolvedReference(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    .registers 5

    .prologue
    .line 318
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_elementType:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;-><init>(Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$1;)V

    .line 319
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    return-object v0
.end method

.method public resolveForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 329
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_result:Ljava/util/Collection;

    move-object v1, v0

    .line 330
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 331
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;

    .line 332
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->hasId(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 333
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 334
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->next:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 336
    return-void

    .line 338
    :cond_27
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->next:Ljava/util/List;

    move-object v1, v0

    .line 339
    goto :goto_9

    .line 341
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to resolve a forward reference with id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] that wasn\'t previously seen as unresolved."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
