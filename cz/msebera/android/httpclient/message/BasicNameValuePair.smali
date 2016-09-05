.class public Lcz/msebera/android/httpclient/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lcz/msebera/android/httpclient/NameValuePair;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->b:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->b:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 108
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_5

    .line 95
    :cond_4
    :goto_4
    return v0

    .line 90
    :cond_5
    instance-of v2, p1, Lcz/msebera/android/httpclient/NameValuePair;

    if-eqz v2, :cond_21

    .line 91
    check-cast p1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    .line 92
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->b:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->b:Ljava/lang/String;

    .line 93
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    .line 95
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 100
    const/16 v0, 0x11

    .line 101
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 103
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a:Ljava/lang/String;

    .line 82
    :goto_6
    return-object v0

    .line 77
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
