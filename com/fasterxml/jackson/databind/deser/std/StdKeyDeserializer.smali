.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.super Lcom/fasterxml/jackson/databind/KeyDeserializer;
.source "StdKeyDeserializer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation


# static fields
.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_BYTE:I = 0x2

.field public static final TYPE_CALENDAR:I = 0xb

.field public static final TYPE_CHAR:I = 0x4

.field public static final TYPE_DATE:I = 0xa

.field public static final TYPE_DOUBLE:I = 0x8

.field public static final TYPE_FLOAT:I = 0x7

.field public static final TYPE_INT:I = 0x5

.field public static final TYPE_LOCALE:I = 0x9

.field public static final TYPE_LONG:I = 0x6

.field public static final TYPE_SHORT:I = 0x3

.field public static final TYPE_UUID:I = 0xc

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _kind:I


# direct methods
.method protected constructor <init>(ILjava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/KeyDeserializer;-><init>()V

    .line 58
    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_kind:I

    .line 59
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    .line 61
    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 68
    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_8

    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_d

    .line 69
    :cond_8
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    move-result-object v0

    .line 99
    :goto_c
    return-object v0

    .line 70
    :cond_d
    const-class v0, Ljava/util/UUID;

    if-ne p0, v0, :cond_1a

    .line 71
    const/16 v0, 0xc

    .line 99
    :goto_13
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    invoke-direct {v1, v0, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;)V

    move-object v0, v1

    goto :goto_c

    .line 72
    :cond_1a
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_20

    .line 73
    const/4 v0, 0x5

    goto :goto_13

    .line 74
    :cond_20
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_26

    .line 75
    const/4 v0, 0x6

    goto :goto_13

    .line 76
    :cond_26
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_2d

    .line 77
    const/16 v0, 0xa

    goto :goto_13

    .line 78
    :cond_2d
    const-class v0, Ljava/util/Calendar;

    if-ne p0, v0, :cond_34

    .line 79
    const/16 v0, 0xb

    goto :goto_13

    .line 81
    :cond_34
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_3a

    .line 82
    const/4 v0, 0x1

    goto :goto_13

    .line 83
    :cond_3a
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_40

    .line 84
    const/4 v0, 0x2

    goto :goto_13

    .line 85
    :cond_40
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_46

    .line 86
    const/4 v0, 0x4

    goto :goto_13

    .line 87
    :cond_46
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_4c

    .line 88
    const/4 v0, 0x3

    goto :goto_13

    .line 89
    :cond_4c
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_52

    .line 90
    const/4 v0, 0x7

    goto :goto_13

    .line 91
    :cond_52
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_59

    .line 92
    const/16 v0, 0x8

    goto :goto_13

    .line 93
    :cond_59
    const-class v0, Ljava/util/Locale;

    if-ne p0, v0, :cond_6b

    .line 94
    const-class v0, Ljava/util/Locale;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;

    move-result-object v1

    .line 95
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    const/16 v2, 0x9

    invoke-direct {v0, v2, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V

    goto :goto_c

    .line 97
    :cond_6b
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 127
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_kind:I

    packed-switch v1, :pswitch_data_d0

    .line 186
    :cond_6
    :goto_6
    return-object v0

    .line 129
    :pswitch_7
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 130
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    .line 132
    :cond_13
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 133
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    .line 135
    :cond_1f
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string/jumbo v1, "value not \'true\' or \'false\'"

    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 138
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v0

    .line 140
    const/16 v1, -0x80

    if-lt v0, v1, :cond_35

    const/16 v1, 0xff

    if-le v0, v1, :cond_3f

    .line 141
    :cond_35
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string/jumbo v1, "overflow, value can not be represented as 8-bit value"

    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 143
    :cond_3f
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_6

    .line 147
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v0

    .line 148
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_51

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_5b

    .line 149
    :cond_51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string/jumbo v1, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 151
    :cond_5b
    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_6

    .line 154
    :pswitch_61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_72

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_6

    .line 157
    :cond_72
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string/jumbo v1, "can only convert 1-character Strings"

    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 159
    :pswitch_7c
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 162
    :pswitch_85
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_6

    .line 168
    :pswitch_8f
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_6

    .line 170
    :pswitch_9a
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_6

    .line 173
    :pswitch_a4
    :try_start_a4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a9} :catch_ac

    move-result-object v0

    goto/16 :goto_6

    .line 174
    :catch_ac
    move-exception v0

    .line 175
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string/jumbo v1, "unable to parse key as locale"

    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 179
    :pswitch_b7
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_6

    .line 181
    :pswitch_bd
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_6

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    goto/16 :goto_6

    .line 184
    :pswitch_c9
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto/16 :goto_6

    .line 127
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_29
        :pswitch_45
        :pswitch_61
        :pswitch_7c
        :pswitch_85
        :pswitch_8f
        :pswitch_9a
        :pswitch_a4
        :pswitch_b7
        :pswitch_bd
        :pswitch_c9
    .end packed-switch
.end method

.method protected _parseDouble(Ljava/lang/String;)D
    .registers 4

    .prologue
    .line 204
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected _parseInt(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected _parseLong(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 200
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p1, :cond_4

    .line 118
    :cond_3
    :goto_3
    return-object v0

    .line 110
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_c

    move-result-object v1

    .line 111
    if-eqz v1, :cond_2c

    move-object v0, v1

    .line 112
    goto :goto_3

    .line 114
    :catch_c
    move-exception v0

    .line 115
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not a valid representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 117
    :cond_2c
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    :cond_40
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string/jumbo v1, "not a valid representation"

    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public getKeyClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    return-object v0
.end method
