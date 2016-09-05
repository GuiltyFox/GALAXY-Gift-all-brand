.class Lcom/google/android/gms/analytics/internal/zzl$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzl;->a(Lcom/google/android/gms/analytics/internal/zzw;J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/zzw;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/analytics/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzw;J)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzl$5;->c:Lcom/google/android/gms/analytics/internal/zzl;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzl$5;->a:Lcom/google/android/gms/analytics/internal/zzw;

    iput-wide p3, p0, Lcom/google/android/gms/analytics/internal/zzl$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl$5;->c:Lcom/google/android/gms/analytics/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl$5;->a:Lcom/google/android/gms/analytics/internal/zzw;

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzl$5;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzl;->a(Lcom/google/android/gms/analytics/internal/zzw;J)V

    return-void
.end method
