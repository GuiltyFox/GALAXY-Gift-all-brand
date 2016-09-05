.class public Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;
.super Ljava/lang/Object;
.source "JsonSerializerMap.java"


# instance fields
.field private final _buckets:[Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->findSize(I)I

    move-result v0

    .line 20
    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_size:I

    .line 21
    add-int/lit8 v2, v0, -0x1

    .line 22
    new-array v3, v0, [Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 25
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hashCode()I

    move-result v5

    and-int/2addr v5, v2

    .line 26
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    aget-object v7, v3, v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-direct {v6, v7, v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    aput-object v6, v3, v5

    goto :goto_19

    .line 28
    :cond_40
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    .line 29
    return-void
.end method

.method private static final findSize(I)I
    .registers 3

    .prologue
    .line 34
    const/16 v0, 0x40

    if-gt p0, v0, :cond_c

    add-int v0, p0, p0

    .line 35
    :goto_6
    const/16 v1, 0x8

    .line 36
    :goto_8
    if-ge v1, v0, :cond_10

    .line 37
    add-int/2addr v1, v1

    goto :goto_8

    .line 34
    :cond_c
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    goto :goto_6

    .line 39
    :cond_10
    return v1
.end method


# virtual methods
.method public find(Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 53
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    aget-object v0, v2, v0

    .line 58
    if-nez v0, :cond_13

    move-object v0, v1

    .line 69
    :goto_12
    return-object v0

    .line 61
    :cond_13
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 62
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_12

    .line 64
    :cond_1e
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    if-eqz v0, :cond_2d

    .line 65
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 66
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_12

    :cond_2d
    move-object v0, v1

    .line 69
    goto :goto_12
.end method

.method public size()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_size:I

    return v0
.end method
