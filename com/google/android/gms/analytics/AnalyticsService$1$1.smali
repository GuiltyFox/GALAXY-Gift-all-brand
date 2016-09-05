.class Lcom/google/android/gms/analytics/AnalyticsService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/AnalyticsService$1;->a(Ljava/lang/Throwable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/AnalyticsService$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/AnalyticsService$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->a:Lcom/google/android/gms/analytics/AnalyticsService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->a:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/AnalyticsService$1;->d:Lcom/google/android/gms/analytics/AnalyticsService;

    iget-object v1, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->a:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget v1, v1, Lcom/google/android/gms/analytics/AnalyticsService$1;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->a:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/AnalyticsService$1;->b:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->e()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->a:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/AnalyticsService$1;->c:Lcom/google/android/gms/analytics/internal/zzaf;

    const-string/jumbo v1, "Device AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->b(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->a:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/AnalyticsService$1;->c:Lcom/google/android/gms/analytics/internal/zzaf;

    const-string/jumbo v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->b(Ljava/lang/String;)V

    goto :goto_26
.end method
