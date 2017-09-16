.class public Lcom/google/android/gms/location/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/FusedLocationProviderApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/location/internal/zzl;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzl;->k()Landroid/location/Location;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method
