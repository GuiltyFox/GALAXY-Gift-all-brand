.class public Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;
.super Ljava/lang/Object;
.source "DefaultSchemePortResolver.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/SchemePortResolver;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->a:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpHost;)I
    .registers 5

    .prologue
    .line 46
    const-string/jumbo v0, "HTTP host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v0

    .line 48
    if-lez v0, :cond_d

    .line 55
    :goto_c
    return v0

    .line 51
    :cond_d
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 53
    const/16 v0, 0x50

    goto :goto_c

    .line 54
    :cond_1d
    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 55
    const/16 v0, 0x1bb

    goto :goto_c

    .line 57
    :cond_29
    new-instance v1, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " protocol is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
