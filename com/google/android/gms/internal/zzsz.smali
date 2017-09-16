.class public Lcom/google/android/gms/internal/zzsz;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/google/android/gms/internal/zzsz;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzsy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzsz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsz;->b:Lcom/google/android/gms/internal/zzsz;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz;->a:Lcom/google/android/gms/internal/zzsy;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsz;->b:Lcom/google/android/gms/internal/zzsz;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzsz;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->a:Lcom/google/android/gms/internal/zzsy;

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_16

    :goto_b
    new-instance v0, Lcom/google/android/gms/internal/zzsy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz;->a:Lcom/google/android/gms/internal/zzsy;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->a:Lcom/google/android/gms/internal/zzsy;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    monitor-exit p0

    return-object v0

    :cond_16
    :try_start_16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    move-result-object p1

    goto :goto_b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
