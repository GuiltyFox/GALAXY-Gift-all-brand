.class public Lcz/msebera/android/httpclient/message/BasicStatusLine;
.super Ljava/lang/Object;
.source "BasicStatusLine.java"

# interfaces
.implements Lcz/msebera/android/httpclient/StatusLine;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/ProtocolVersion;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string/jumbo v0, "Version"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/ProtocolVersion;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicStatusLine;->a:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 71
    const-string/jumbo v0, "Status code"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicStatusLine;->b:I

    .line 72
    iput-object p3, p0, Lcz/msebera/android/httpclient/message/BasicStatusLine;->c:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicStatusLine;->a:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicStatusLine;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicStatusLine;->c:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->b:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/StatusLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
