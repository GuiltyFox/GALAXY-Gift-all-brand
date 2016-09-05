.class public Lcz/msebera/android/httpclient/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HeaderElement;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Lcz/msebera/android/httpclient/NameValuePair;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V
    .registers 5

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->a:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->b:Ljava/lang/String;

    .line 63
    if-eqz p3, :cond_15

    .line 64
    iput-object p3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    .line 68
    :goto_14
    return-void

    .line 66
    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Lcz/msebera/android/httpclient/NameValuePair;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    goto :goto_14
.end method


# virtual methods
.method public a(I)Lcz/msebera/android/httpclient/NameValuePair;
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;
    .registers 8

    .prologue
    .line 102
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    .line 104
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_c
    if-ge v2, v4, :cond_1f

    aget-object v0, v3, v2

    .line 105
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 110
    :goto_1a
    return-object v0

    .line 104
    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_1f
    move-object v0, v1

    goto :goto_1a
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Lcz/msebera/android/httpclient/NameValuePair;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/NameValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/NameValuePair;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 158
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-ne p0, p1, :cond_5

    .line 124
    :cond_4
    :goto_4
    return v0

    .line 118
    :cond_5
    instance-of v2, p1, Lcz/msebera/android/httpclient/HeaderElement;

    if-eqz v2, :cond_2b

    .line 119
    check-cast p1, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    .line 120
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->a:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->b:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->b:Ljava/lang/String;

    .line 121
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    iget-object v3, p1, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    .line 122
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4

    :cond_2b
    move v0, v1

    .line 124
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 130
    const/16 v0, 0x11

    .line 131
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v1

    .line 133
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_1d

    aget-object v4, v2, v0

    .line 134
    invoke-static {v1, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 136
    :cond_1d
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->b:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 144
    const-string/jumbo v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_19
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;->c:[Lcz/msebera/android/httpclient/NameValuePair;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v3, :cond_2d

    aget-object v4, v2, v0

    .line 148
    const-string/jumbo v5, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 151
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
