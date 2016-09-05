.class public Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
.super Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "MapSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# static fields
.field protected static final UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;


# instance fields
.field protected _dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected final _filterId:Ljava/lang/Object;

.field protected final _ignoredEntries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final _sortKeys:Z

.field protected _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _valueTypeIsStatic:Z

.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 128
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 129
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 130
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 131
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 132
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 133
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 134
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 135
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 136
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 137
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    .line 138
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    .line 139
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 5

    .prologue
    .line 143
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 144
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 145
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 146
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 147
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 148
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 149
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 150
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 151
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 152
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 153
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    .line 154
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    .line 155
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V
    .registers 6

    .prologue
    .line 159
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 160
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 161
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 162
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 163
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 164
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 165
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 166
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 167
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 168
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 169
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    .line 170
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    .line 171
    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 109
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 110
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 111
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 112
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 113
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 114
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 115
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 116
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyMap()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 117
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 118
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    .line 119
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    .line 120
    return-void
.end method

.method public static construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->toSet([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 228
    if-nez p1, :cond_25

    .line 229
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    move-object v2, v3

    .line 235
    :goto_a
    if-nez p2, :cond_2e

    .line 236
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v0, 0x1

    :cond_15
    move v4, v0

    .line 243
    :goto_16
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 245
    if-eqz p6, :cond_24

    .line 246
    invoke-virtual {v0, p6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    .line 248
    :cond_24
    return-object v0

    .line 231
    :cond_25
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 232
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_a

    .line 239
    :cond_2e
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_38

    move v4, v0

    .line 240
    goto :goto_16

    :cond_38
    move v4, p2

    goto :goto_16
.end method

.method private static toSet([Ljava/lang/String;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 253
    :cond_5
    const/4 v0, 0x0

    .line 259
    :cond_6
    return-object v0

    .line 255
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 256
    array-length v2, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_6

    aget-object v3, p0, v1

    .line 257
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 701
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_e

    .line 702
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 704
    :cond_e
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 691
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_e

    .line 692
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 694
    :cond_e
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method protected _orderEntries(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 710
    instance-of v0, p1, Ljava/util/SortedMap;

    if-eqz v0, :cond_5

    .line 713
    :goto_4
    return-object p1

    :cond_5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    goto :goto_4
.end method

.method public bridge synthetic _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-object v0
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 7

    .prologue
    .line 668
    if-nez p1, :cond_23

    const/4 v0, 0x0

    move-object v1, v0

    .line 669
    :goto_4
    if-eqz v1, :cond_22

    .line 670
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {v1, v0, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;->keyFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 671
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 672
    if-nez v0, :cond_1d

    .line 673
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 676
    :cond_1d
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {v1, v0, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;->valueFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 678
    :cond_22
    return-void

    .line 668
    :cond_23
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectMapFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;

    move-result-object v0

    move-object v1, v0

    goto :goto_4
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 277
    .line 279
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v6

    .line 280
    if-nez p2, :cond_73

    move-object v5, v1

    .line 283
    :goto_9
    if-eqz v5, :cond_bf

    if-eqz v6, :cond_bf

    .line 284
    invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_bc

    .line 286
    invoke-virtual {p1, v5, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 288
    :goto_17
    invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 289
    if-eqz v2, :cond_b7

    .line 290
    invoke-virtual {p1, v5, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 293
    :goto_24
    if-nez v0, :cond_28

    .line 294
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 297
    :cond_28
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 298
    if-nez v3, :cond_79

    .line 302
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_42

    :cond_3c
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->hasContentTypeAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 304
    :cond_42
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 309
    :cond_48
    :goto_48
    if-nez v1, :cond_b5

    .line 310
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 312
    :goto_4c
    if-nez v0, :cond_7e

    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 317
    :goto_54
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 319
    if-eqz v6, :cond_b2

    if-eqz v5, :cond_b2

    .line 320
    invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;

    move-result-object v7

    .line 321
    if-eqz v7, :cond_89

    .line 322
    if-nez v1, :cond_83

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 323
    :goto_67
    array-length v8, v7

    move v1, v4

    :goto_69
    if-ge v1, v8, :cond_8a

    aget-object v9, v7, v1

    .line 324
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 280
    :cond_73
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    move-object v5, v0

    goto :goto_9

    .line 307
    :cond_79
    invoke-virtual {p1, v3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    goto :goto_48

    .line 315
    :cond_7e
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    goto :goto_54

    .line 322
    :cond_83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_67

    :cond_89
    move-object v0, v1

    .line 327
    :cond_8a
    invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b0

    const/4 v1, 0x1

    :goto_97
    move v5, v1

    move-object v4, v0

    :goto_99
    move-object v0, p0

    move-object v1, p2

    .line 330
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    .line 333
    if-eqz p2, :cond_af

    .line 334
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_af

    .line 336
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    .line 339
    :cond_af
    return-object v0

    :cond_b0
    move v1, v4

    .line 328
    goto :goto_97

    :cond_b2
    move v5, v4

    move-object v4, v1

    goto :goto_99

    :cond_b5
    move-object v0, v1

    goto :goto_4c

    :cond_b7
    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_24

    :cond_bc
    move-object v0, v1

    goto/16 :goto_17

    :cond_bf
    move-object v0, v1

    goto/16 :goto_24
.end method

.method public getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getKeySerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 5

    .prologue
    .line 658
    const-string/jumbo v0, "object"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 661
    return-object v0
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 27
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->hasSingleElement(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public hasSingleElement(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 365
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 27
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 360
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    .prologue
    .line 27
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serialize(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 399
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 400
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 401
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    invoke-virtual {p0, p3, v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V

    .line 403
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 416
    :goto_19
    return-void

    .line 406
    :cond_1a
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    if-nez v0, :cond_26

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 407
    :cond_26
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_orderEntries(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 409
    :cond_2a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_37

    .line 410
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 415
    :cond_33
    :goto_33
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_19

    .line 412
    :cond_37
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_33
.end method

.method public serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v0, :cond_8

    .line 451
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 499
    :cond_7
    return-void

    .line 454
    :cond_8
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 456
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 457
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    move v1, v0

    .line 459
    :goto_16
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 461
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :cond_21
    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 464
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 465
    if-nez v7, :cond_4e

    .line 466
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v0, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 476
    :goto_43
    if-nez v6, :cond_5e

    .line 477
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    move-object v0, v2

    :goto_49
    move-object v2, v0

    .line 498
    goto :goto_21

    .line 457
    :cond_4b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_16

    .line 469
    :cond_4e
    if-eqz v1, :cond_52

    if-eqz v6, :cond_21

    .line 471
    :cond_52
    if-eqz v4, :cond_5a

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 472
    :cond_5a
    invoke-virtual {v3, v7, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_43

    .line 479
    :cond_5e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 480
    invoke-virtual {v2, v8}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 481
    if-nez v0, :cond_a1

    .line 482
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 483
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3, v0, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 488
    :goto_7a
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 491
    :goto_7f
    :try_start_7f
    invoke-virtual {v2, v6, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_49

    .line 492
    :catch_83
    move-exception v2

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 495
    invoke-virtual {p0, p3, v2, p1, v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    .line 486
    :cond_9c
    invoke-virtual {p0, v2, v8, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_7a

    :cond_a1
    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_7f
.end method

.method protected serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 511
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 512
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 513
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x1

    move v1, v0

    .line 515
    :goto_10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 518
    if-nez v7, :cond_43

    .line 519
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v0, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 526
    :goto_3a
    if-nez v6, :cond_53

    .line 527
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_18

    .line 513
    :cond_40
    const/4 v0, 0x0

    move v1, v0

    goto :goto_10

    .line 522
    :cond_43
    if-eqz v1, :cond_47

    if-eqz v6, :cond_18

    .line 523
    :cond_47
    if-eqz v3, :cond_4f

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 524
    :cond_4f
    invoke-virtual {v2, v7, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_3a

    .line 530
    :cond_53
    if-nez v4, :cond_72

    .line 531
    :try_start_55
    invoke-virtual {p4, v6, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_18

    .line 535
    :catch_59
    move-exception v0

    .line 537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 538
    invoke-virtual {p0, p3, v0, p1, v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_18

    .line 533
    :cond_72
    :try_start_72
    invoke-virtual {p4, v6, p2, p3, v4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_59

    goto :goto_18

    .line 542
    :cond_76
    return-void
.end method

.method public serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/ser/PropertyFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 557
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    move v1, v0

    .line 559
    :goto_c
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 560
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-direct {v5, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 562
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v0

    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 564
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 565
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 567
    if-nez v7, :cond_51

    .line 568
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v0, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    move-object v3, v0

    .line 578
    :goto_3d
    if-nez v8, :cond_61

    .line 579
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    .line 593
    :goto_46
    invoke-virtual {v5, v7, v8, v3, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->reset(Ljava/lang/Object;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 595
    :try_start_49
    invoke-interface {p4, p1, p2, p3, v5}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_88

    :goto_4c
    move-object v2, v0

    .line 601
    goto :goto_1e

    .line 557
    :cond_4e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_c

    .line 571
    :cond_51
    if-eqz v1, :cond_55

    if-eqz v8, :cond_1e

    .line 573
    :cond_55
    if-eqz v4, :cond_5d

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 574
    :cond_5d
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-object v3, v0

    goto :goto_3d

    .line 581
    :cond_61
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 582
    invoke-virtual {v2, v9}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 583
    if-nez v0, :cond_a2

    .line 584
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 585
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3, v0, v9}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 590
    :goto_7d
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    goto :goto_46

    .line 588
    :cond_83
    invoke-virtual {p0, v2, v9, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_7d

    .line 596
    :catch_88
    move-exception v2

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 599
    invoke-virtual {p0, p3, v2, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4c

    .line 602
    :cond_a1
    return-void

    :cond_a2
    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    goto :goto_46
.end method

.method protected serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 607
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 610
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 611
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    move v1, v0

    .line 613
    :goto_f
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v4

    move-object v3, v4

    :cond_19
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 616
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 617
    if-nez v10, :cond_47

    .line 618
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v0, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    invoke-virtual {v0, v4, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 628
    :goto_3a
    if-nez v9, :cond_57

    .line 629
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    move-object v0, v2

    move-object v2, v3

    :goto_41
    move-object v3, v2

    move-object v2, v0

    .line 652
    goto :goto_19

    .line 611
    :cond_44
    const/4 v0, 0x0

    move v1, v0

    goto :goto_f

    .line 621
    :cond_47
    if-eqz v1, :cond_4b

    if-eqz v9, :cond_19

    .line 623
    :cond_4b
    if-eqz v7, :cond_53

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 624
    :cond_53
    invoke-virtual {v6, v10, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_3a

    .line 631
    :cond_57
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 633
    if-ne v5, v2, :cond_7e

    move-object v0, v2

    move-object v2, v3

    .line 645
    :goto_5f
    :try_start_5f
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {v3, v9, p2, p3, v5}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_65

    goto :goto_41

    .line 646
    :catch_65
    move-exception v3

    .line 648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 649
    invoke-virtual {p0, p3, v3, p1, v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_41

    .line 636
    :cond_7e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 637
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3, v0, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    :goto_92
    move-object v3, v0

    move-object v2, v0

    move-object v0, v5

    .line 642
    goto :goto_5f

    .line 639
    :cond_96
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v5, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_92

    .line 653
    :cond_9d
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 5

    .prologue
    .line 27
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeWithType(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 424
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 425
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    if-nez v0, :cond_15

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 426
    :cond_15
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_orderEntries(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 428
    :cond_19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_26

    .line 429
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 434
    :cond_22
    :goto_22
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 435
    return-void

    .line 431
    :cond_26
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_22
.end method

.method public withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_4
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;)V

    .line 192
    iget-boolean v1, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    if-eq p5, v1, :cond_16

    .line 193
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    invoke-direct {v1, v0, v2, p5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V

    move-object v0, v1

    .line 195
    :cond_16
    return-object v0
.end method
