.class public final Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/util/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "advertisingId"    # Ljava/lang/String;
    .param p2, "limitAdTrackingEnabled"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return v0
.end method
