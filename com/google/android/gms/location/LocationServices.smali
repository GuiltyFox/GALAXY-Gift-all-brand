.class public Lcom/google/android/gms/location/LocationServices;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/location/FusedLocationProviderApi;

.field public static final c:Lcom/google/android/gms/location/GeofencingApi;

.field public static final d:Lcom/google/android/gms/location/SettingsApi;

.field private static final e:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/location/internal/zzl;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/location/internal/zzl;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->e:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/location/LocationServices$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationServices$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->f:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "LocationServices.API"

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->f:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/location/LocationServices;->e:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->a:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/location/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    new-instance v0, Lcom/google/android/gms/location/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->c:Lcom/google/android/gms/location/GeofencingApi;

    new-instance v0, Lcom/google/android/gms/location/internal/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->d:Lcom/google/android/gms/location/SettingsApi;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/location/internal/zzl;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1c

    move v0, v1

    :goto_5
    const-string/jumbo v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->b(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->e:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzl;

    if-eqz v0, :cond_1e

    :goto_15
    const-string/jumbo v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_1c
    move v0, v2

    goto :goto_5

    :cond_1e
    move v1, v2

    goto :goto_15
.end method
