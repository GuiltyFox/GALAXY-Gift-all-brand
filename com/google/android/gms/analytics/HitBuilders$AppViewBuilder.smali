.class public Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder",
        "<",
        "Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    const-string/jumbo v0, "&t"

    const-string/jumbo v1, "screenview"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
