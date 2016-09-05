.class public final Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->a:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->b:Z

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->a:Ljava/lang/String;

    return-object v0
.end method
