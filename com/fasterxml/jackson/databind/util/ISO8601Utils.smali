.class public Lcom/fasterxml/jackson/databind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final GMT_ID:Ljava/lang/String; = "GMT"

.field private static final TIMEZONE_GMT:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)V
    .registers 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "found":C
    if-eq v0, p2, :cond_32

    .line 203
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' character but found \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_32
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 45
    const/4 v0, 0x0

    sget-object v1, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z

    .prologue
    .line 56
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 15
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z
    .param p2, "tz"    # Ljava/util/TimeZone;

    .prologue
    const v11, 0xea60

    const/16 v10, 0x3a

    const/16 v7, 0x2d

    .line 68
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 69
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    const-string/jumbo v6, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "capacity":I
    if-eqz p1, :cond_f8

    const-string/jumbo v6, ".sss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_21
    add-int/2addr v1, v6

    .line 74
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    if-nez v6, :cond_fb

    const-string/jumbo v6, "Z"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_2f
    add-int/2addr v1, v6

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string/jumbo v8, "yyyy"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 78
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string/jumbo v8, "MM"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 80
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string/jumbo v8, "dd"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 82
    const/16 v6, 0x54

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string/jumbo v8, "hh"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 84
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string/jumbo v8, "mm"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 86
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string/jumbo v8, "ss"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 88
    if-eqz p1, :cond_bc

    .line 89
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string/jumbo v8, "sss"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 93
    :cond_bc
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 94
    .local v5, "offset":I
    if-eqz v5, :cond_107

    .line 95
    div-int v6, v5, v11

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 96
    .local v3, "hours":I
    div-int v6, v5, v11

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 97
    .local v4, "minutes":I
    if-gez v5, :cond_104

    move v6, v7

    :goto_d9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v6, "hh"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v3, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 99
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v6, "mm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v4, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 105
    .end local v3    # "hours":I
    .end local v4    # "minutes":I
    :goto_f3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 73
    .end local v2    # "formatted":Ljava/lang/StringBuilder;
    .end local v5    # "offset":I
    :cond_f8
    const/4 v6, 0x0

    goto/16 :goto_21

    .line 74
    :cond_fb
    const-string/jumbo v6, "+hh:mm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    goto/16 :goto_2f

    .line 97
    .restart local v2    # "formatted":Ljava/lang/StringBuilder;
    .restart local v3    # "hours":I
    .restart local v4    # "minutes":I
    .restart local v5    # "offset":I
    :cond_104
    const/16 v6, 0x2b

    goto :goto_d9

    .line 102
    .end local v3    # "hours":I
    .end local v4    # "minutes":I
    :cond_107
    const/16 v6, 0x5a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f3
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 6
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .prologue
    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "strValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, p2, v2

    .local v0, "i":I
    :goto_a
    if-lez v0, :cond_14

    .line 252
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 254
    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 22
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v5, 0x0

    .line 125
    .local v5, "fail":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 128
    .local v11, "offset":I
    add-int/lit8 v12, v11, 0x4

    .end local v11    # "offset":I
    .local v12, "offset":I
    :try_start_4
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17

    .line 129
    .local v17, "year":I
    const/16 v18, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 132
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int/lit8 v12, v11, 0x2

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v10

    .line 133
    .local v10, "month":I
    const/16 v18, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 136
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int/lit8 v12, v11, 0x2

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    .line 137
    .local v3, "day":I
    const/16 v18, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 140
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int/lit8 v12, v11, 0x2

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    .line 141
    .local v6, "hour":I
    const/16 v18, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 143
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int/lit8 v12, v11, 0x2

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    .line 144
    .local v9, "minutes":I
    const/16 v18, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 146
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int/lit8 v12, v11, 0x2

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v13

    .line 148
    .local v13, "seconds":I
    const/4 v8, 0x0

    .line 149
    .local v8, "milliseconds":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a9

    .line 150
    const/16 v18, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 151
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int/lit8 v12, v11, 0x3

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I
    :try_end_8a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_8a} :catch_1a5
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8a} :catch_1a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8a} :catch_17b

    move-result v8

    move v11, v12

    .line 156
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    :goto_8c
    :try_start_8c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 157
    .local v16, "timezoneIndicator":C
    const/16 v18, 0x2b

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a2

    const/16 v18, 0x2d

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_106

    .line 158
    :cond_a2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "GMT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "timezoneId":Ljava/lang/String;
    :goto_bc
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    .line 165
    .local v14, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v14}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_133

    .line 166
    new-instance v18, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v18
    :try_end_d2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_d2} :catch_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_d2} :catch_130
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_d2} :catch_1a0

    .line 180
    .end local v14    # "timezone":Ljava/util/TimeZone;
    .end local v15    # "timezoneId":Ljava/lang/String;
    .end local v16    # "timezoneIndicator":C
    :catch_d2
    move-exception v4

    .line 181
    .end local v3    # "day":I
    .end local v6    # "hour":I
    .end local v8    # "milliseconds":I
    .end local v9    # "minutes":I
    .end local v10    # "month":I
    .end local v13    # "seconds":I
    .end local v17    # "year":I
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_d3
    move-object v5, v4

    .line 187
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_d4
    if-nez p0, :cond_180

    const/4 v7, 0x0

    .line 188
    .local v7, "input":Ljava/lang/String;
    :goto_d7
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to parse date ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 159
    .end local v7    # "input":Ljava/lang/String;
    .restart local v3    # "day":I
    .restart local v6    # "hour":I
    .restart local v8    # "milliseconds":I
    .restart local v9    # "minutes":I
    .restart local v10    # "month":I
    .restart local v13    # "seconds":I
    .restart local v16    # "timezoneIndicator":C
    .restart local v17    # "year":I
    :cond_106
    const/16 v18, 0x5a

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_112

    .line 160
    :try_start_10e
    const-string/jumbo v15, "GMT"

    .restart local v15    # "timezoneId":Ljava/lang/String;
    goto :goto_bc

    .line 162
    .end local v15    # "timezoneId":Ljava/lang/String;
    :cond_112
    new-instance v18, Ljava/lang/IndexOutOfBoundsException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Invalid time zone indicator "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 182
    .end local v16    # "timezoneIndicator":C
    :catch_130
    move-exception v4

    .line 183
    .end local v3    # "day":I
    .end local v6    # "hour":I
    .end local v8    # "milliseconds":I
    .end local v9    # "minutes":I
    .end local v10    # "month":I
    .end local v13    # "seconds":I
    .end local v17    # "year":I
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_131
    move-object v5, v4

    .line 186
    goto :goto_d4

    .line 169
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "day":I
    .restart local v6    # "hour":I
    .restart local v8    # "milliseconds":I
    .restart local v9    # "minutes":I
    .restart local v10    # "month":I
    .restart local v13    # "seconds":I
    .restart local v14    # "timezone":Ljava/util/TimeZone;
    .restart local v15    # "timezoneId":Ljava/lang/String;
    .restart local v16    # "timezoneIndicator":C
    .restart local v17    # "year":I
    :cond_133
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v14}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 170
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/16 v18, 0x2

    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 173
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 174
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 175
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 176
    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-virtual {v2, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/16 v18, 0xe

    move/from16 v0, v18

    invoke-virtual {v2, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 179
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_179
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10e .. :try_end_179} :catch_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_10e .. :try_end_179} :catch_130
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10e .. :try_end_179} :catch_1a0

    move-result-object v18

    return-object v18

    .line 184
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "day":I
    .end local v6    # "hour":I
    .end local v8    # "milliseconds":I
    .end local v9    # "minutes":I
    .end local v10    # "month":I
    .end local v11    # "offset":I
    .end local v13    # "seconds":I
    .end local v14    # "timezone":Ljava/util/TimeZone;
    .end local v15    # "timezoneId":Ljava/lang/String;
    .end local v16    # "timezoneIndicator":C
    .end local v17    # "year":I
    .restart local v12    # "offset":I
    :catch_17b
    move-exception v4

    move v11, v12

    .line 185
    .end local v12    # "offset":I
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "offset":I
    :goto_17d
    move-object v5, v4

    goto/16 :goto_d4

    .line 187
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_180
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_d7

    .line 184
    .restart local v3    # "day":I
    .restart local v6    # "hour":I
    .restart local v8    # "milliseconds":I
    .restart local v9    # "minutes":I
    .restart local v10    # "month":I
    .restart local v13    # "seconds":I
    .restart local v17    # "year":I
    :catch_1a0
    move-exception v4

    goto :goto_17d

    .line 182
    .end local v3    # "day":I
    .end local v6    # "hour":I
    .end local v8    # "milliseconds":I
    .end local v9    # "minutes":I
    .end local v10    # "month":I
    .end local v11    # "offset":I
    .end local v13    # "seconds":I
    .end local v17    # "year":I
    .restart local v12    # "offset":I
    :catch_1a2
    move-exception v4

    move v11, v12

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    goto :goto_131

    .line 180
    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    :catch_1a5
    move-exception v4

    move v11, v12

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    goto/16 :goto_d3

    .end local v11    # "offset":I
    .restart local v3    # "day":I
    .restart local v6    # "hour":I
    .restart local v8    # "milliseconds":I
    .restart local v9    # "minutes":I
    .restart local v10    # "month":I
    .restart local v12    # "offset":I
    .restart local v13    # "seconds":I
    .restart local v17    # "year":I
    :cond_1a9
    move v11, v12

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    goto/16 :goto_8c
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 217
    if-ltz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt p2, v4, :cond_c

    if-le p1, p2, :cond_12

    .line 218
    :cond_c
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_12
    move v1, p1

    .line 222
    .local v1, "i":I
    const/4 v3, 0x0

    .line 224
    .local v3, "result":I
    if-ge v1, p2, :cond_6c

    .line 225
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 226
    .local v0, "digit":I
    if-gez v0, :cond_3c

    .line 227
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :cond_3c
    neg-int v3, v0

    .line 231
    .end local v0    # "digit":I
    :goto_3d
    if-ge v2, p2, :cond_6a

    .line 232
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 233
    .restart local v0    # "digit":I
    if-gez v0, :cond_65

    .line 234
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    :cond_65
    mul-int/lit8 v3, v3, 0xa

    .line 237
    sub-int/2addr v3, v0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3d

    .line 239
    .end local v0    # "digit":I
    :cond_6a
    neg-int v4, v3

    return v4

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_6c
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3d
.end method

.method public static timeZoneGMT()Ljava/util/TimeZone;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    return-object v0
.end method
