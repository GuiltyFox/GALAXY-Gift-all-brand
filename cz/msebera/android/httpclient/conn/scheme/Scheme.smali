.class public final Lcz/msebera/android/httpclient/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

.field private final c:I

.field private final d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string/jumbo v0, "Scheme name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    if-lez p2, :cond_32

    const v0, 0xffff

    if-gt p2, v0, :cond_32

    move v0, v1

    :goto_13
    const-string/jumbo v3, "Port is invalid"

    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 92
    const-string/jumbo v0, "Socket factory"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a:Ljava/lang/String;

    .line 94
    iput p2, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c:I

    .line 95
    instance-of v0, p3, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;

    if-eqz v0, :cond_34

    .line 96
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    .line 97
    iput-object p3, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 105
    :goto_31
    return-void

    :cond_32
    move v0, v2

    .line 91
    goto :goto_13

    .line 98
    :cond_34
    instance-of v0, p3, Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;

    if-eqz v0, :cond_44

    .line 99
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    .line 100
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor2;

    check-cast p3, Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {v0, p3}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor2;-><init>(Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    goto :goto_31

    .line 102
    :cond_44
    iput-boolean v2, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    .line 103
    iput-object p3, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    goto :goto_31
.end method

.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string/jumbo v0, "Scheme name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "Socket factory"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    if-lez p3, :cond_39

    const v0, 0xffff

    if-gt p3, v0, :cond_39

    move v0, v1

    :goto_19
    const-string/jumbo v3, "Port is invalid"

    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 129
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a:Ljava/lang/String;

    .line 130
    instance-of v0, p2, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_3b

    .line 131
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor;

    check-cast p2, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor;-><init>(Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 133
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    .line 138
    :goto_36
    iput p3, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c:I

    .line 139
    return-void

    :cond_39
    move v0, v2

    .line 127
    goto :goto_19

    .line 135
    :cond_3b
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 136
    iput-boolean v2, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    goto :goto_36
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c:I

    return v0
.end method

.method public final a(I)I
    .registers 2

    .prologue
    .line 216
    if-gtz p1, :cond_4

    iget p1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c:I

    :cond_4
    return p1
.end method

.method public final b()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    if-ne p0, p1, :cond_5

    .line 247
    :cond_4
    :goto_4
    return v0

    .line 241
    :cond_5
    instance-of v2, p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    if-eqz v2, :cond_23

    .line 242
    check-cast p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 243
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c:I

    iget v3, p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c:I

    if-ne v2, v3, :cond_21

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4

    :cond_23
    move v0, v1

    .line 247
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 253
    const/16 v0, 0x11

    .line 254
    iget v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(II)I

    move-result v0

    .line 255
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 256
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d:Z

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(IZ)I

    move-result v0

    .line 257
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->e:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->e:Ljava/lang/String;

    .line 233
    :cond_22
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->e:Ljava/lang/String;

    return-object v0
.end method
