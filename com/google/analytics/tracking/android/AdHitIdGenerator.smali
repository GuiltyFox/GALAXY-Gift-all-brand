.class Lcom/google/analytics/tracking/android/AdHitIdGenerator;
.super Ljava/lang/Object;
.source "AdHitIdGenerator.java"


# instance fields
.field private mAdMobSdkInstalled:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_4
    const-string v1, "com.google.ads.AdRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_d
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->mAdMobSdkInstalled:Z
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_f} :catch_12

    .line 21
    :goto_f
    return-void

    :cond_10
    move v1, v2

    .line 17
    goto :goto_d

    .line 18
    :catch_12
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->mAdMobSdkInstalled:Z

    goto :goto_f
.end method

.method constructor <init>(Z)V
    .registers 2
    .param p1, "adMobSdkInstalled"    # Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->mAdMobSdkInstalled:Z

    .line 26
    return-void
.end method


# virtual methods
.method getAdHitId()I
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->mAdMobSdkInstalled:Z

    if-nez v0, :cond_6

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/google/analytics/tracking/android/AdMobInfo;->getInstance()Lcom/google/analytics/tracking/android/AdMobInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/AdMobInfo;->generateAdHitId()I

    move-result v0

    goto :goto_5
.end method
