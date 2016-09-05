.class public Lcz/msebera/android/httpclient/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Lcz/msebera/android/httpclient/auth/AuthScope;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    .line 61
    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    .line 66
    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthScope;

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    const/4 v2, -0x1

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    sget-object v4, Lcz/msebera/android/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->d:Lcz/msebera/android/httpclient/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 117
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 157
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p1, :cond_1b

    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    :goto_7
    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    .line 108
    if-gez p2, :cond_c

    const/4 p2, -0x1

    :cond_c
    iput p2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    .line 109
    if-nez p3, :cond_12

    sget-object p3, Lcz/msebera/android/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    :cond_12
    iput-object p3, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    .line 110
    if-nez p4, :cond_22

    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    :goto_18
    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    .line 111
    return-void

    .line 107
    :cond_1b
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 110
    :cond_22
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/auth/AuthScope;)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 208
    const/4 v0, 0x0

    .line 209
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 210
    const/4 v0, 0x1

    .line 216
    :cond_d
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 217
    add-int/lit8 v0, v0, 0x2

    .line 223
    :cond_19
    iget v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    iget v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    if-ne v2, v3, :cond_4a

    .line 224
    add-int/lit8 v0, v0, 0x4

    .line 230
    :cond_21
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 231
    add-int/lit8 v0, v0, 0x8

    .line 237
    :cond_2d
    :goto_2d
    return v0

    .line 212
    :cond_2e
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_d

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 213
    goto :goto_2d

    .line 219
    :cond_3c
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_19

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_19

    move v0, v1

    .line 220
    goto :goto_2d

    .line 226
    :cond_4a
    iget v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    if-eq v2, v1, :cond_21

    iget v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    if-eq v2, v1, :cond_21

    move v0, v1

    .line 227
    goto :goto_2d

    .line 233
    :cond_54
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2d

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2d

    move v0, v1

    .line 234
    goto :goto_2d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    if-nez p1, :cond_6

    move v0, v1

    .line 259
    :cond_5
    :goto_5
    return v0

    .line 248
    :cond_6
    if-eq p1, p0, :cond_5

    .line 251
    instance-of v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;

    if-nez v2, :cond_11

    .line 252
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    .line 254
    :cond_11
    check-cast p1, Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 255
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    .line 256
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    iget v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    .line 258
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    .line 259
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_37
    move v0, v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 295
    const/16 v0, 0x11

    .line 296
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 297
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(II)I

    move-result v0

    .line 298
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 299
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 300
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 269
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->e:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :cond_1b
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :goto_2a
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 280
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    if-ltz v1, :cond_46

    .line 283
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_4b
    const-string/jumbo v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a
.end method
