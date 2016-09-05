.class Lcom/google/android/gms/analytics/internal/zzb$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzb;->a(Lcom/google/android/gms/analytics/internal/zzw;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/zzw;

.field final synthetic b:Lcom/google/android/gms/analytics/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzb;Lcom/google/android/gms/analytics/internal/zzw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzb$6;->b:Lcom/google/android/gms/analytics/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzb$6;->a:Lcom/google/android/gms/analytics/internal/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb$6;->b:Lcom/google/android/gms/analytics/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzb;->a(Lcom/google/android/gms/analytics/internal/zzb;)Lcom/google/android/gms/analytics/internal/zzl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzb$6;->a:Lcom/google/android/gms/analytics/internal/zzw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->a(Lcom/google/android/gms/analytics/internal/zzw;)V

    return-void
.end method
