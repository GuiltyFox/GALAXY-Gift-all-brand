.class public Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder",
        "<",
        "Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    const-string/jumbo v0, "&t"

    const-string/jumbo v1, "timing"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    .registers 6

    const-string/jumbo v0, "&utt"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    .registers 3

    const-string/jumbo v0, "&utv"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    .registers 3

    const-string/jumbo v0, "&utc"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    .registers 3

    const-string/jumbo v0, "&utl"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method
