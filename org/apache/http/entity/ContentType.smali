.class public final Lorg/apache/http/entity/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lorg/apache/http/entity/ContentType;

.field public static final b:Lorg/apache/http/entity/ContentType;

.field public static final c:Lorg/apache/http/entity/ContentType;

.field public static final d:Lorg/apache/http/entity/ContentType;

.field public static final e:Lorg/apache/http/entity/ContentType;

.field public static final f:Lorg/apache/http/entity/ContentType;

.field public static final g:Lorg/apache/http/entity/ContentType;

.field public static final h:Lorg/apache/http/entity/ContentType;

.field public static final i:Lorg/apache/http/entity/ContentType;

.field public static final j:Lorg/apache/http/entity/ContentType;

.field public static final k:Lorg/apache/http/entity/ContentType;

.field public static final l:Lorg/apache/http/entity/ContentType;

.field public static final m:Lorg/apache/http/entity/ContentType;

.field public static final n:Lorg/apache/http/entity/ContentType;


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Ljava/nio/charset/Charset;

.field private final q:[Lorg/apache/http/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    const-string/jumbo v0, "application/atom+xml"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->a:Lorg/apache/http/entity/ContentType;

    .line 66
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->b:Lorg/apache/http/entity/ContentType;

    .line 68
    const-string/jumbo v0, "application/json"

    sget-object v2, Lorg/apache/http/Consts;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->c:Lorg/apache/http/entity/ContentType;

    .line 70
    const-string/jumbo v2, "application/octet-stream"

    move-object v0, v1

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {v2, v0}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->d:Lorg/apache/http/entity/ContentType;

    .line 72
    const-string/jumbo v0, "application/svg+xml"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->e:Lorg/apache/http/entity/ContentType;

    .line 74
    const-string/jumbo v0, "application/xhtml+xml"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->f:Lorg/apache/http/entity/ContentType;

    .line 76
    const-string/jumbo v0, "application/xml"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->g:Lorg/apache/http/entity/ContentType;

    .line 78
    const-string/jumbo v0, "multipart/form-data"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->h:Lorg/apache/http/entity/ContentType;

    .line 80
    const-string/jumbo v0, "text/html"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->i:Lorg/apache/http/entity/ContentType;

    .line 82
    const-string/jumbo v0, "text/plain"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->j:Lorg/apache/http/entity/ContentType;

    .line 84
    const-string/jumbo v0, "text/xml"

    sget-object v2, Lorg/apache/http/Consts;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->k:Lorg/apache/http/entity/ContentType;

    .line 86
    const-string/jumbo v0, "*/*"

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->l:Lorg/apache/http/entity/ContentType;

    .line 90
    sget-object v0, Lorg/apache/http/entity/ContentType;->j:Lorg/apache/http/entity/ContentType;

    sput-object v0, Lorg/apache/http/entity/ContentType;->m:Lorg/apache/http/entity/ContentType;

    .line 91
    sget-object v0, Lorg/apache/http/entity/ContentType;->d:Lorg/apache/http/entity/ContentType;

    sput-object v0, Lorg/apache/http/entity/ContentType;->n:Lorg/apache/http/entity/ContentType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 4

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/apache/http/entity/ContentType;->o:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lorg/apache/http/entity/ContentType;->p:Ljava/nio/charset/Charset;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/entity/ContentType;->q:[Lorg/apache/http/NameValuePair;

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .registers 3

    .prologue
    .line 188
    new-instance v1, Lorg/apache/http/entity/ContentType;

    const/4 v0, 0x0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;
    .registers 5

    .prologue
    .line 175
    const-string/jumbo v0, "MIME type"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lorg/apache/http/entity/ContentType;->b(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "MIME type may not contain reserved characters"

    invoke-static {v1, v2}, Lorg/apache/http/util/Args;->a(ZLjava/lang/String;)V

    .line 177
    new-instance v1, Lorg/apache/http/entity/ContentType;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 157
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 159
    const/16 v3, 0x22

    if-eq v2, v3, :cond_18

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_18

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_19

    .line 163
    :cond_18
    :goto_18
    return v1

    .line 157
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_1c
    const/4 v1, 0x1

    goto :goto_18
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->o:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->p:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 144
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 145
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->q:[Lorg/apache/http/NameValuePair;

    if-eqz v1, :cond_23

    .line 147
    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->b:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    iget-object v2, p0, Lorg/apache/http/entity/ContentType;->q:[Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 153
    :cond_1e
    :goto_1e
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_23
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->p:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1e

    .line 150
    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->p:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1e
.end method
