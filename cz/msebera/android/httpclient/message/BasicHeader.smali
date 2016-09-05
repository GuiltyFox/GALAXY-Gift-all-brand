.class public Lcz/msebera/android/httpclient/message/BasicHeader;
.super Ljava/lang/Object;
.source "BasicHeader.java"

# interfaces
.implements Lcz/msebera/android/httpclient/Header;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeader;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicHeader;->b:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeader;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()[Lcz/msebera/android/httpclient/HeaderElement;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeader;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeader;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 82
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    new-array v0, v0, [Lcz/msebera/android/httpclient/HeaderElement;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->b:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
