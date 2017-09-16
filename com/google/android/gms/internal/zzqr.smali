.class public Lcom/google/android/gms/internal/zzqr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lcom/google/android/gms/internal/zzqs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqr;->a:Lcom/google/android/gms/common/api/Api;

    iput p2, p0, Lcom/google/android/gms/internal/zzqr;->b:I

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->c:Lcom/google/android/gms/internal/zzqs;

    const-string/jumbo v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqr;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->c:Lcom/google/android/gms/internal/zzqs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqs;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqr;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->c:Lcom/google/android/gms/internal/zzqs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqs;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqr;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->c:Lcom/google/android/gms/internal/zzqs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->a:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzqr;->b:I

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzqs;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzqs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqr;->c:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method
