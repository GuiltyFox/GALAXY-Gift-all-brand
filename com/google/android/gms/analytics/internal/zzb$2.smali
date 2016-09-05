.class Lcom/google/android/gms/analytics/internal/zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzb;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/analytics/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzb;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->b:Lcom/google/android/gms/analytics/internal/zzb;

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->b:Lcom/google/android/gms/analytics/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzb;->a(Lcom/google/android/gms/analytics/internal/zzb;)Lcom/google/android/gms/analytics/internal/zzl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->a(Z)V

    return-void
.end method
