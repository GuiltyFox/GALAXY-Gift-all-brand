.class public Lcz/msebera/android/httpclient/message/BufferedHeader;
.super Ljava/lang/Object;
.source "BufferedHeader.java"

# interfaces
.implements Lcz/msebera/android/httpclient/FormattedHeader;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field private final c:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V
    .registers 5

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c(I)I

    move-result v0

    .line 81
    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_30
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_59

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_59
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 91
    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->a:Ljava/lang/String;

    .line 92
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->c:I

    .line 93
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    iget v1, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->c:I

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[Lcz/msebera/android/httpclient/HeaderElement;
    .registers 4

    .prologue
    .line 105
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 106
    iget v1, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->c:I

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 107
    sget-object v1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->b:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BufferedHeader;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
