.class public final Lokhttp3/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/CertificatePinner$Builder;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/CertificatePinner;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 314
    new-instance v0, Lokhttp3/CertificatePinner;

    iget-object v1, p0, Lokhttp3/CertificatePinner$Builder;->a:Ljava/util/List;

    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/List;Lokhttp3/internal/tls/CertificateChainCleaner;Lokhttp3/CertificatePinner$1;)V

    return-object v0
.end method
