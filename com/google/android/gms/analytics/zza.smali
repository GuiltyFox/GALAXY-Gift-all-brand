.class public Lcom/google/android/gms/analytics/zza;
.super Lcom/google/android/gms/measurement/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/zzf",
        "<",
        "Lcom/google/android/gms/analytics/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/analytics/internal/zzf;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->h()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->d()Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/zzf;-><init>(Lcom/google/android/gms/measurement/zzg;Lcom/google/android/gms/internal/zznl;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zza;->b:Lcom/google/android/gms/analytics/internal/zzf;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/measurement/zzc;)V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/zzc;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->b:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->p()Lcom/google/android/gms/analytics/internal/zzn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkc;->b(Ljava/lang/String;)V

    :cond_1f
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/zza;->c:Z

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->b:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->o()Lcom/google/android/gms/analytics/internal/zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zza;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzkc;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zza;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkc;->a(Z)V

    :cond_41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/zza;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/zzb;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zza;->b:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/zzi;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_c

    :cond_26
    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zza;->c:Z

    return-void
.end method

.method k()Lcom/google/android/gms/analytics/internal/zzf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->b:Lcom/google/android/gms/analytics/internal/zzf;

    return-object v0
.end method

.method public l()Lcom/google/android/gms/measurement/zzc;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->m()Lcom/google/android/gms/measurement/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzc;->a()Lcom/google/android/gms/measurement/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->b:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->q()Lcom/google/android/gms/analytics/internal/zzk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzk;->c()Lcom/google/android/gms/internal/zzqh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzc;->a(Lcom/google/android/gms/measurement/zze;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->b:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->r()Lcom/google/android/gms/analytics/internal/zzu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzu;->b()Lcom/google/android/gms/internal/zzqj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzc;->a(Lcom/google/android/gms/measurement/zze;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zza;->b(Lcom/google/android/gms/measurement/zzc;)V

    return-object v0
.end method
