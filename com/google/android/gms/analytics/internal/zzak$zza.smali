.class Lcom/google/android/gms/analytics/internal/zzak$zza;
.super Lcom/google/android/gms/analytics/internal/zzc;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/internal/zzc;",
        "Lcom/google/android/gms/analytics/internal/zzq$zza",
        "<",
        "Lcom/google/android/gms/analytics/internal/zzal;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzRT:Lcom/google/android/gms/analytics/internal/zzal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzc;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/internal/zzal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    return-void
.end method


# virtual methods
.method public zzc(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    iput p2, v0, Lcom/google/android/gms/analytics/internal/zzal;->zzRV:I

    :goto_d
    return-void

    :cond_e
    const-string/jumbo v0, "int configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public zzc(Ljava/lang/String;Z)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ga_autoActivityTracking"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    if-eqz p2, :cond_12

    :goto_f
    iput v0, v2, Lcom/google/android/gms/analytics/internal/zzal;->zzRW:I

    :goto_11
    return-void

    :cond_12
    move v0, v1

    goto :goto_f

    :cond_14
    const-string/jumbo v2, "ga_anonymizeIp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    if-eqz p2, :cond_24

    :goto_21
    iput v0, v2, Lcom/google/android/gms/analytics/internal/zzal;->zzRX:I

    goto :goto_11

    :cond_24
    move v0, v1

    goto :goto_21

    :cond_26
    const-string/jumbo v2, "ga_reportUncaughtExceptions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    if-eqz p2, :cond_36

    :goto_33
    iput v0, v2, Lcom/google/android/gms/analytics/internal/zzal;->zzRY:I

    goto :goto_11

    :cond_36
    move v0, v1

    goto :goto_33

    :cond_38
    const-string/jumbo v0, "bool configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public synthetic zzjZ()Lcom/google/android/gms/analytics/internal/zzp;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzlB()Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public zzk(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzal;->zzRZ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/zzal;->zzNB:Ljava/lang/String;

    :goto_d
    return-void

    :cond_e
    const-string/jumbo v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/analytics/internal/zzal;->zzRU:D
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1f} :catch_20

    goto :goto_d

    :catch_20
    move-exception v0

    const-string/jumbo v1, "Error parsing ga_sampleFrequency value"

    invoke-virtual {p0, v1, p2, v0}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_28
    const-string/jumbo v0, "string configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public zzlB()Lcom/google/android/gms/analytics/internal/zzal;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzRT:Lcom/google/android/gms/analytics/internal/zzal;

    return-object v0
.end method
