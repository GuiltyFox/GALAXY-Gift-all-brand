.class Lcom/google/android/gms/analytics/internal/zzn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzn;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzn$1;->a:Lcom/google/android/gms/analytics/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn$1;->a:Lcom/google/android/gms/analytics/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzn;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
