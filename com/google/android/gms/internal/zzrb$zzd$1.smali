.class Lcom/google/android/gms/internal/zzrb$zzd$1;
.super Lcom/google/android/gms/internal/zzrf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrb$zzd;->a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzrb;

.field final synthetic b:Lcom/google/android/gms/signin/internal/SignInResponse;

.field final synthetic c:Lcom/google/android/gms/internal/zzrb$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrb$zzd;Lcom/google/android/gms/internal/zzre;Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$zzd$1;->c:Lcom/google/android/gms/internal/zzrb$zzd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrb$zzd$1;->a:Lcom/google/android/gms/internal/zzrb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzrb$zzd$1;->b:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzrf$zza;-><init>(Lcom/google/android/gms/internal/zzre;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzd$1;->a:Lcom/google/android/gms/internal/zzrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zzd$1;->b:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrb;->a(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method
