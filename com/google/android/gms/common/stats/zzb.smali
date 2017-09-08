.class public final Lcom/google/android/gms/common/stats/zzb;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/android/gms/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsi",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/google/android/gms/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsi",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x64

    const-string/jumbo v0, "gms:common:stats:max_num_of_events"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsi;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->a:Lcom/google/android/gms/internal/zzsi;

    const-string/jumbo v0, "gms:common:stats:max_chunk_size"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsi;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->b:Lcom/google/android/gms/internal/zzsi;

    return-void
.end method
