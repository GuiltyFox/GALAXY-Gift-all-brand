.class Lcom/google/android/gms/analytics/internal/zzah$zza;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/zzah;

.field private b:I

.field private c:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzah;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->a:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->c:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->b:I

    return v0
.end method

.method public a(Lcom/google/android/gms/analytics/internal/zzab;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->a:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->m()I

    move-result v3

    if-le v0, v3, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->a:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->a:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Error formatting hit"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    move v0, v2

    goto :goto_16

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->a:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->e()I

    move-result v4

    if-le v0, v4, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->a:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    move v0, v2

    goto :goto_16

    :cond_4c
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-lez v4, :cond_56

    add-int/lit8 v0, v0, 0x1

    :cond_56
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->a:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->g()I

    move-result v4

    if-le v0, v4, :cond_6b

    move v0, v1

    goto :goto_16

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_7c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->c:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzah;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_7c
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_81} :catch_89

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->b:I

    move v0, v2

    goto :goto_16

    :catch_89
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->a:Lcom/google/android/gms/analytics/internal/zzah;

    const-string/jumbo v3, "Failed to write payload when batching hits"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_16
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
