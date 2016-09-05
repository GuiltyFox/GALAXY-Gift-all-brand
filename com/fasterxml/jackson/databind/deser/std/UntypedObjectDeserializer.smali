.class public Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "UntypedObjectDeserializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;",
        "Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;"
    }
.end annotation


# static fields
.field protected static final NO_OBJECTS:[Ljava/lang/Object;

.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->NO_OBJECTS:[Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 71
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 72
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 73
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 74
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 75
    return-void
.end method


# virtual methods
.method protected _findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 107
    const/4 v0, 0x0

    .line 109
    :cond_b
    return-object v0
.end method

.method protected _withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    if-ne v0, v1, :cond_1b

    .line 121
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$Vanilla;->std:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$Vanilla;

    .line 149
    :cond_1a
    :goto_1a
    return-object p0

    .line 123
    :cond_1b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 124
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    if-eqz v1, :cond_67

    .line 125
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    move-object v1, v0

    .line 127
    :goto_28
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 128
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    if-eqz v2, :cond_65

    .line 129
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    move-object v2, v0

    .line 131
    :goto_35
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 132
    instance-of v3, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    if-eqz v3, :cond_63

    .line 133
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    move-object v3, v0

    .line 135
    :goto_42
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 136
    instance-of v4, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    if-eqz v4, :cond_4e

    .line 137
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 141
    :cond_4e
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v1, v4, :cond_5e

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v2, v4, :cond_5e

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v3, v4, :cond_5e

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eq v0, v4, :cond_1a

    .line 146
    :cond_5e
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p0

    goto :goto_1a

    :cond_63
    move-object v3, v0

    goto :goto_42

    :cond_65
    move-object v2, v0

    goto :goto_35

    :cond_67
    move-object v1, v0

    goto :goto_28
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 168
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9e

    .line 226
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 171
    :pswitch_16
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_21

    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    :goto_20
    return-object v0

    .line 174
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 176
    :pswitch_26
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapArrayToArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 179
    :cond_33
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_3e

    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 182
    :cond_3e
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 184
    :pswitch_43
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 186
    :pswitch_48
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_53

    .line 187
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 189
    :cond_53
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 192
    :pswitch_58
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_63

    .line 193
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 198
    :cond_63
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 199
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_20

    .line 201
    :cond_70
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    goto :goto_20

    .line 204
    :pswitch_75
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_80

    .line 205
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 210
    :cond_80
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 211
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_20

    .line 213
    :cond_8d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_20

    .line 216
    :pswitch_96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_20

    .line 218
    :pswitch_99
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_20

    .line 221
    :pswitch_9c
    const/4 v0, 0x0

    goto :goto_20

    .line 168
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_26
        :pswitch_43
        :pswitch_48
        :pswitch_58
        :pswitch_75
        :pswitch_96
        :pswitch_99
        :pswitch_9c
    .end packed-switch
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_76

    .line 287
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 242
    :pswitch_16
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    :goto_1a
    return-object v0

    .line 248
    :pswitch_1b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_26

    .line 249
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    .line 251
    :cond_26
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 254
    :pswitch_2b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_36

    .line 255
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    .line 258
    :cond_36
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 259
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1a

    .line 265
    :cond_43
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    goto :goto_1a

    .line 268
    :pswitch_48
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_53

    .line 269
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    .line 272
    :cond_53
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 273
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1a

    .line 275
    :cond_60
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1a

    .line 278
    :pswitch_69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1a

    .line 280
    :pswitch_6c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1a

    .line 282
    :pswitch_6f
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    .line 285
    :pswitch_74
    const/4 v0, 0x0

    goto :goto_1a

    .line 234
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_6f
        :pswitch_1b
        :pswitch_2b
        :pswitch_48
        :pswitch_69
        :pswitch_6c
        :pswitch_74
    .end packed-switch
.end method

.method protected mapArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x2

    .line 303
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_11

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 337
    :goto_10
    return-object v0

    .line 306
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .line 307
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_27

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 310
    goto :goto_10

    .line 312
    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    .line 313
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v5, :cond_40

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 317
    goto :goto_10

    .line 319
    :cond_40
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;

    move-result-object v5

    .line 320
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v1

    .line 322
    const/4 v6, 0x1

    aput-object v2, v1, v4

    .line 323
    aput-object v3, v1, v6

    move-object v2, v1

    move v1, v0

    .line 326
    :cond_4f
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 327
    add-int/lit8 v0, v0, 0x1

    .line 328
    array-length v3, v2

    if-lt v1, v3, :cond_73

    .line 329
    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move v3, v4

    .line 332
    :goto_5d
    add-int/lit8 v1, v3, 0x1

    aput-object v6, v2, v3

    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_4f

    .line 335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    invoke-virtual {v5, v2, v1, v3}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V

    move-object v0, v3

    .line 337
    goto :goto_10

    :cond_73
    move v3, v1

    goto :goto_5d
.end method

.method protected mapArrayToArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_c

    .line 390
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->NO_OBJECTS:[Ljava/lang/Object;

    .line 403
    :goto_b
    return-object v0

    .line 392
    :cond_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;

    move-result-object v4

    .line 393
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 396
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .line 397
    array-length v3, v2

    if-lt v0, v3, :cond_33

    .line 398
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move v3, v1

    .line 401
    :goto_22
    add-int/lit8 v0, v3, 0x1

    aput-object v5, v2, v3

    .line 402
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v5, :cond_16

    .line 403
    invoke-virtual {v4, v2, v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    :cond_33
    move v3, v0

    goto :goto_22
.end method

.method protected mapObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v4, 0x2

    .line 345
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 346
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_d

    .line 347
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 350
    :cond_d
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    .line 352
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 380
    :goto_16
    return-object v0

    .line 354
    :cond_17
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .line 357
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_33

    .line 358
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 359
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 362
    :cond_33
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .line 365
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v5, :cond_53

    .line 366
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 367
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 372
    :cond_53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 373
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_5e
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_5e

    goto :goto_16
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .registers 6

    .prologue
    .line 91
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 92
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    .line 94
    const-class v3, Ljava/util/Map;

    invoke-virtual {v2, v3, v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 95
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 96
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 97
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 98
    return-void
.end method
