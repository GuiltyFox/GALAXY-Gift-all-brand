.class final Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;
.super Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
.source "MapDeserializer.java"


# instance fields
.field private final _parent:Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;

.field public final key:Ljava/lang/Object;

.field public final next:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;",
            "Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 624
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    .line 618
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->next:Ljava/util/Map;

    .line 625
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;

    .line 626
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->key:Ljava/lang/Object;

    .line 627
    return-void
.end method

.method synthetic constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$1;)V
    .registers 6

    .prologue
    .line 615
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;-><init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleResolvedForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 631
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->resolveForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 632
    return-void
.end method
