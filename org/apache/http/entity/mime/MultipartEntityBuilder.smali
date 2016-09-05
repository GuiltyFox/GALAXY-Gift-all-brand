.class public Lorg/apache/http/entity/mime/MultipartEntityBuilder;
.super Ljava/lang/Object;
.source "MultipartEntityBuilder.java"


# static fields
.field private static final a:[C


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lorg/apache/http/entity/mime/HttpMultipartMode;

.field private d:Ljava/lang/String;

.field private e:Ljava/nio/charset/Charset;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a:[C

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string/jumbo v0, "form-data"

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->b:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->a:Lorg/apache/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 65
    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->d:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->e:Ljava/nio/charset/Charset;

    .line 67
    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->f:Ljava/util/List;

    .line 75
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string/jumbo v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    if-eqz p2, :cond_1d

    .line 166
    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 7

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 175
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1e

    .line 176
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_26

    .line 177
    sget-object v4, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a:[C

    sget-object v5, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a:[C

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 179
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->d:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public a(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->e:Ljava/nio/charset/Charset;

    .line 99
    return-object p0
.end method

.method a(Lorg/apache/http/entity/mime/FormBodyPart;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .registers 3

    .prologue
    .line 103
    if-nez p1, :cond_3

    .line 110
    :goto_2
    return-object p0

    .line 106
    :cond_3
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->f:Ljava/util/List;

    if-nez v0, :cond_e

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->f:Ljava/util/List;

    .line 109
    :cond_e
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public a(Lorg/apache/http/entity/mime/HttpMultipartMode;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 79
    return-object p0
.end method

.method a()Lorg/apache/http/entity/mime/MultipartFormEntity;
    .registers 7

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->b:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->b:Ljava/lang/String;

    .line 184
    :goto_6
    iget-object v4, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->e:Ljava/nio/charset/Charset;

    .line 185
    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->d:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->d:Ljava/lang/String;

    .line 186
    :goto_e
    iget-object v2, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->f:Ljava/util/List;

    if-eqz v2, :cond_47

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    :goto_19
    iget-object v3, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 190
    :goto_1f
    sget-object v5, Lorg/apache/http/entity/mime/MultipartEntityBuilder$1;->a:[I

    invoke-virtual {v3}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_5e

    .line 198
    new-instance v3, Lorg/apache/http/entity/mime/HttpStrictMultipart;

    invoke-direct {v3, v0, v4, v1, v2}, Lorg/apache/http/entity/mime/HttpStrictMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v3

    .line 200
    :goto_30
    new-instance v2, Lorg/apache/http/entity/mime/MultipartFormEntity;

    invoke-direct {p0, v1, v4}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->c()J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lorg/apache/http/entity/mime/MultipartFormEntity;-><init>(Lorg/apache/http/entity/mime/AbstractMultipartForm;Ljava/lang/String;J)V

    return-object v2

    .line 183
    :cond_3e
    const-string/jumbo v0, "form-data"

    goto :goto_6

    .line 185
    :cond_42
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 186
    :cond_47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_19

    .line 188
    :cond_4c
    sget-object v3, Lorg/apache/http/entity/mime/HttpMultipartMode;->a:Lorg/apache/http/entity/mime/HttpMultipartMode;

    goto :goto_1f

    .line 192
    :pswitch_4f
    new-instance v3, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;

    invoke-direct {v3, v0, v4, v1, v2}, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v3

    .line 193
    goto :goto_30

    .line 195
    :pswitch_56
    new-instance v3, Lorg/apache/http/entity/mime/HttpRFC6532Multipart;

    invoke-direct {v3, v0, v4, v1, v2}, Lorg/apache/http/entity/mime/HttpRFC6532Multipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v3

    .line 196
    goto :goto_30

    .line 190
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_56
    .end packed-switch
.end method
