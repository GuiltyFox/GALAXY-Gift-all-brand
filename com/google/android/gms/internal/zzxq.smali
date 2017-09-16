.class public final Lcom/google/android/gms/internal/zzxq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final a:Lcom/google/android/gms/internal/zzxq;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Ljava/lang/Long;

.field private final i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzxq$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzxq$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq$zza;->a()Lcom/google/android/gms/internal/zzxq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzxq;->a:Lcom/google/android/gms/internal/zzxq;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzxq;->b:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzxq;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxq;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzxq;->e:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzxq;->g:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzxq;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzxq;->h:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzxq;->i:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/zzxq$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/zzxq;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxq;->b:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxq;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxq;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxq;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxq;->g:Z

    return v0
.end method

.method public g()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxq;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public h()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxq;->i:Ljava/lang/Long;

    return-object v0
.end method
