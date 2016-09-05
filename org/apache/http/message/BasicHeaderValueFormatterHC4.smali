.class public Lorg/apache/http/message/BasicHeaderValueFormatterHC4;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatterHC4.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueFormatter;


# static fields
.field public static final a:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    .line 58
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->b:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/http/HeaderElement;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 203
    if-nez p1, :cond_5

    move v0, v1

    .line 222
    :cond_4
    return v0

    .line 207
    :cond_5
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 209
    if-eqz v2, :cond_1a

    .line 211
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    .line 214
    :cond_1a
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v2

    .line 215
    if-lez v2, :cond_4

    .line 216
    :goto_20
    if-ge v1, v2, :cond_4

    .line 217
    invoke-interface {p1, v1}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a(Lorg/apache/http/NameValuePair;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method protected a(Lorg/apache/http/NameValuePair;)I
    .registers 4

    .prologue
    .line 345
    if-nez p1, :cond_4

    .line 346
    const/4 v0, 0x0

    .line 355
    :cond_3
    :goto_3
    return v0

    .line 349
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 350
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_3

    .line 353
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method protected a([Lorg/apache/http/HeaderElement;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 129
    if-eqz p1, :cond_7

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_8

    .line 138
    :cond_7
    return v0

    .line 133
    :cond_8
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    .line 134
    array-length v3, p1

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_11
    if-ge v1, v3, :cond_7

    aget-object v2, p1, v1

    .line 135
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a(Lorg/apache/http/HeaderElement;)I

    move-result v2

    add-int/2addr v2, v0

    .line 134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_11
.end method

.method protected a([Lorg/apache/http/NameValuePair;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 280
    if-eqz p1, :cond_7

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_8

    .line 289
    :cond_7
    return v0

    .line 284
    :cond_8
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    .line 285
    array-length v3, p1

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_11
    if-ge v1, v3, :cond_7

    aget-object v2, p1, v1

    .line 286
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a(Lorg/apache/http/NameValuePair;)I

    move-result v2

    add-int/2addr v2, v0

    .line 285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_11
.end method

.method protected a(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .registers 8

    .prologue
    const/16 v3, 0x22

    const/4 v1, 0x0

    .line 373
    .line 374
    if-nez p3, :cond_19

    move v0, v1

    .line 375
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    if-nez p3, :cond_19

    .line 376
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a(C)Z

    move-result p3

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 380
    :cond_19
    if-eqz p3, :cond_1e

    .line 381
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 383
    :cond_1e
    :goto_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 384
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 385
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->b(C)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 386
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 388
    :cond_33
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 390
    :cond_39
    if-eqz p3, :cond_3e

    .line 391
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 393
    :cond_3e
    return-void
.end method

.method protected a(C)Z
    .registers 3

    .prologue
    .line 405
    const-string/jumbo v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected b(C)Z
    .registers 3

    .prologue
    .line 418
    const-string/jumbo v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 6

    .prologue
    .line 101
    const-string/jumbo v0, "Header element array"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a([Lorg/apache/http/HeaderElement;)I

    move-result v0

    .line 104
    if-nez p1, :cond_25

    .line 105
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 110
    :goto_11
    const/4 v0, 0x0

    :goto_12
    array-length v1, p2

    if-ge v0, v1, :cond_29

    .line 111
    if-lez v0, :cond_1d

    .line 112
    const-string/jumbo v1, ", "

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 114
    :cond_1d
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 107
    :cond_25
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_11

    .line 117
    :cond_29
    return-object p1
.end method

.method public formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 7

    .prologue
    .line 167
    const-string/jumbo v0, "Header element"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a(Lorg/apache/http/HeaderElement;)I

    move-result v0

    .line 170
    if-nez p1, :cond_3f

    .line 171
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 176
    :goto_11
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 177
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_26

    .line 179
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 180
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 183
    :cond_26
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v1

    .line 184
    if-lez v1, :cond_43

    .line 185
    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v1, :cond_43

    .line 186
    const-string/jumbo v2, "; "

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 187
    invoke-interface {p2, v0}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 173
    :cond_3f
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_11

    .line 191
    :cond_43
    return-object p1
.end method

.method public formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 6

    .prologue
    .line 317
    const-string/jumbo v0, "Name / value pair"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a(Lorg/apache/http/NameValuePair;)I

    move-result v0

    .line 320
    if-nez p1, :cond_27

    .line 321
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 326
    :goto_11
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 327
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_26

    .line 329
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 330
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 333
    :cond_26
    return-object p1

    .line 323
    :cond_27
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_11
.end method

.method public formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 6

    .prologue
    .line 252
    const-string/jumbo v0, "Header parameter array"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->a([Lorg/apache/http/NameValuePair;)I

    move-result v0

    .line 255
    if-nez p1, :cond_25

    .line 256
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 261
    :goto_11
    const/4 v0, 0x0

    :goto_12
    array-length v1, p2

    if-ge v0, v1, :cond_29

    .line 262
    if-lez v0, :cond_1d

    .line 263
    const-string/jumbo v1, "; "

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 265
    :cond_1d
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 258
    :cond_25
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_11

    .line 268
    :cond_29
    return-object p1
.end method
