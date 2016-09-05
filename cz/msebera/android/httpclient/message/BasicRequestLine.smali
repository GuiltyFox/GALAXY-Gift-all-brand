.class public Lcz/msebera/android/httpclient/message/BasicRequestLine;
.super Ljava/lang/Object;
.source "BasicRequestLine.java"

# interfaces
.implements Lcz/msebera/android/httpclient/RequestLine;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/ProtocolVersion;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "Method"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicRequestLine;->b:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "URI"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicRequestLine;->c:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "Version"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/ProtocolVersion;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicRequestLine;->a:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 58
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicRequestLine;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicRequestLine;->a:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicRequestLine;->c:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->b:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
