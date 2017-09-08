.class Lcom/google/android/gms/analytics/internal/zzah;
.super Lcom/google/android/gms/analytics/internal/zzd;


# static fields
.field private static final c:[B


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/analytics/internal/zzal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzah;->c:[B

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const-string/jumbo v0, "GoogleAnalytics"

    sget-object v1, Lcom/google/android/gms/analytics/internal/zze;->a:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/internal/zzao;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SM-G935F"

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->d()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah;->b:Lcom/google/android/gms/analytics/internal/zzal;

    return-void
.end method

.method private a(Ljava/net/URL;[B)I
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "POST bytes, url"

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->B()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "Post payload\n"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_31} :catch_76
    .catchall {:try_start_23 .. :try_end_31} :catchall_95

    move-result-object v2

    const/4 v0, 0x1

    :try_start_33
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v0, p2

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_56

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->t()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzb;->h()V

    :cond_56
    const-string/jumbo v3, "POST status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_60} :catch_af
    .catchall {:try_start_33 .. :try_end_60} :catchall_ad

    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6e

    :cond_65
    :goto_65
    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->c()V

    :goto_6d
    return v0

    :catch_6e
    move-exception v1

    const-string/jumbo v3, "Error closing http post connection output stream"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    :catch_76
    move-exception v0

    move-object v2, v1

    :goto_78
    :try_start_78
    const-string/jumbo v3, "Network POST connection error"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_ad

    if-eqz v1, :cond_83

    :try_start_80
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_8d

    :cond_83
    :goto_83
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_88
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->c()V

    const/4 v0, 0x0

    goto :goto_6d

    :catch_8d
    move-exception v0

    const-string/jumbo v1, "Error closing http post connection output stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_83

    :catchall_95
    move-exception v0

    move-object v2, v1

    :goto_97
    if-eqz v1, :cond_9c

    :try_start_99
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_a5

    :cond_9c
    :goto_9c
    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->c()V

    throw v0

    :catch_a5
    move-exception v1

    const-string/jumbo v3, "Error closing http post connection output stream"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9c

    :catchall_ad
    move-exception v0

    goto :goto_97

    :catch_af
    move-exception v0

    goto :goto_78
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string/jumbo v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)Ljava/net/URL;
    .registers 8

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->f()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_57
    :try_start_57
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/net/MalformedURLException; {:try_start_57 .. :try_end_5c} :catch_af

    :goto_5c
    return-object v0

    :cond_5d
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_57

    :catch_af
    move-exception v0

    const-string/jumbo v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_5c
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const-string/jumbo v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "UTF-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x400

    new-array v0, v0, [B

    :cond_9
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1d

    move-result v2

    if-gtz v2, :cond_9

    if-eqz v1, :cond_14

    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string/jumbo v1, "Error closing http connection input stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    :catchall_1d
    move-exception v0

    if-eqz v1, :cond_23

    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    throw v0

    :catch_24
    move-exception v1

    const-string/jumbo v2, "Error closing http connection input stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23
.end method

.method private a(Lcom/google/android/gms/analytics/internal/zzab;)Z
    .registers 8

    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->f()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v1

    :goto_e
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v2, "Error formatting hit for upload"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    move v0, v2

    goto :goto_e

    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->c()I

    move-result v4

    if-gt v3, v4, :cond_45

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "Failed to build collect GET endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->f(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1e

    :cond_3d
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/net/URL;)I

    move-result v0

    if-eq v0, v5, :cond_1e

    move v1, v2

    goto :goto_1e

    :cond_45
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzah;->a(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_56

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v2, "Error formatting hit for POST upload"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_1e

    :cond_56
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->e()I

    move-result v4

    if-le v3, v4, :cond_70

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v2, "Hit payload exceeds size limit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_1e

    :cond_70
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->b(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_7e

    const-string/jumbo v0, "Failed to build collect POST endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->f(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1e

    :cond_7e
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/net/URL;[B)I

    move-result v0

    if-eq v0, v5, :cond_1e

    move v1, v2

    goto :goto_1e
.end method

.method private static a([B)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/net/URL;)I
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "GET request"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_23

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->t()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzb;->h()V

    :cond_23
    const-string/jumbo v2, "GET status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2d} :catch_33
    .catchall {:try_start_a .. :try_end_2d} :catchall_41

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_32
    :goto_32
    return v0

    :catch_33
    move-exception v0

    :try_start_34
    const-string/jumbo v2, "Network GET connection error"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzah;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_41

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3f
    const/4 v0, 0x0

    goto :goto_32

    :catchall_41
    move-exception v0

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_47
    throw v0
.end method

.method private b(Ljava/net/URL;[B)I
    .registers 13

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/zzah;->a([B)[B

    move-result-object v4

    const-string/jumbo v0, "POST compressed size, ratio %, url"

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v6, 0x64

    array-length v3, v4

    int-to-long v8, v3

    mul-long/2addr v6, v8

    array-length v3, p2

    int-to-long v8, v3

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v0, v4

    array-length v2, p2

    if-le v0, v2, :cond_41

    const-string/jumbo v0, "Compressed payload is larger then uncompressed. compressed, uncompressed"

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzah;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->B()Z

    move-result v0

    if-eqz v0, :cond_63

    const-string/jumbo v2, "Post payload"

    const-string/jumbo v3, "\n"

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_aa

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_60
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_66} :catch_b0
    .catchall {:try_start_7 .. :try_end_66} :catchall_cf

    move-result-object v3

    const/4 v0, 0x1

    :try_start_68
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v0, "Content-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-virtual {v3, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v4

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_7e} :catch_ef
    .catchall {:try_start_68 .. :try_end_7e} :catchall_e7

    move-result-object v2

    :try_start_7f
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_85} :catch_f2
    .catchall {:try_start_7f .. :try_end_85} :catchall_e9

    :try_start_85
    invoke-direct {p0, v3}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_97

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->t()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzb;->h()V

    :cond_97
    const-string/jumbo v2, "POST status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_a1} :catch_ef
    .catchall {:try_start_85 .. :try_end_a1} :catchall_e7

    if-eqz v3, :cond_a6

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a6
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->c()V

    :goto_a9
    return v0

    :cond_aa
    :try_start_aa
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_af} :catch_b0
    .catchall {:try_start_aa .. :try_end_af} :catchall_cf

    goto :goto_60

    :catch_b0
    move-exception v0

    move-object v2, v1

    :goto_b2
    :try_start_b2
    const-string/jumbo v3, "Network compressed POST connection error"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_ec

    if-eqz v1, :cond_bd

    :try_start_ba
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_c7

    :cond_bd
    :goto_bd
    if-eqz v2, :cond_c2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->c()V

    const/4 v0, 0x0

    goto :goto_a9

    :catch_c7
    move-exception v0

    const-string/jumbo v1, "Error closing http compressed post connection output stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_bd

    :catchall_cf
    move-exception v0

    move-object v3, v1

    :goto_d1
    if-eqz v1, :cond_d6

    :try_start_d3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_df

    :cond_d6
    :goto_d6
    if-eqz v3, :cond_db

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_db
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->c()V

    throw v0

    :catch_df
    move-exception v1

    const-string/jumbo v2, "Error closing http compressed post connection output stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d6

    :catchall_e7
    move-exception v0

    goto :goto_d1

    :catchall_e9
    move-exception v0

    move-object v1, v2

    goto :goto_d1

    :catchall_ec
    move-exception v0

    move-object v3, v2

    goto :goto_d1

    :catch_ef
    move-exception v0

    move-object v2, v3

    goto :goto_b2

    :catch_f2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_b2
.end method

.method private b(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/net/URL;
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->f()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    move-object v1, v0

    :goto_29
    :try_start_29
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/net/MalformedURLException; {:try_start_29 .. :try_end_2e} :catch_5f

    :goto_2e
    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_57
    move-object v1, v0

    goto :goto_29

    :cond_59
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_57

    :catch_5f
    move-exception v0

    const-string/jumbo v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private c(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()[B
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzah;->c:[B

    return-object v0
.end method

.method private e()Ljava/net/URL;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    :try_start_22
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_27} :catch_2f

    move-object v0, v1

    :goto_28
    return-object v0

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :catch_2f
    move-exception v0

    const-string/jumbo v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_28
.end method


# virtual methods
.method a(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "ht"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "qt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "AppUID"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "z"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "_gmsv"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_5c} :catch_5d

    goto :goto_14

    :catch_5d
    move-exception v0

    const-string/jumbo v1, "Failed to encode name or value"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_65
    return-object v0

    :cond_66
    :try_start_66
    const-string/jumbo v0, "ht"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->n()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->d()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-string/jumbo v3, "qt"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    if-eqz p2, :cond_a4

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->g()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_a9

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_9e
    const-string/jumbo v1, "z"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_a9
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->c(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;
    :try_end_ac
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_66 .. :try_end_ac} :catch_5d

    move-result-object v0

    goto :goto_9e
.end method

.method a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to obtain http connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string/jumbo v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzah;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/zzab;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->D()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->t()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah;->b:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->m()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/analytics/internal/zzal;->a(J)Z

    move-result v0

    if-nez v0, :cond_35

    :cond_2c
    move v1, v2

    move v0, v2

    :cond_2e
    :goto_2e
    if-eqz v0, :cond_52

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->r()Lcom/google/android/gms/analytics/internal/zzm;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/analytics/internal/zzm;->a:Lcom/google/android/gms/analytics/internal/zzm;

    if-eq v0, v3, :cond_50

    move v0, v1

    :goto_42
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->s()Lcom/google/android/gms/analytics/internal/zzo;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/analytics/internal/zzo;->b:Lcom/google/android/gms/analytics/internal/zzo;

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_2e

    :cond_50
    move v0, v2

    goto :goto_42

    :cond_52
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_34
.end method

.method a(Ljava/util/List;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/zzab;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->b(Z)V

    const-string/jumbo v0, "Uploading batched hits. compression, count"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/analytics/internal/zzah$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/internal/zzah$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzah;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/internal/zzah$zza;->a(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v4

    if-nez v4, :cond_46

    :cond_3c
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah$zza;->a()I

    move-result v0

    if-nez v0, :cond_52

    move-object v0, v1

    :goto_43
    return-object v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_7

    :cond_46
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_52
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzah;->e()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_63

    const-string/jumbo v0, "Failed to build batching endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->f(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_43

    :cond_63
    if-eqz p2, :cond_81

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah$zza;->b()[B

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/net/URL;[B)I

    move-result v0

    :goto_6d
    const/16 v3, 0xc8

    if-ne v3, v0, :cond_8a

    const-string/jumbo v0, "Batched upload completed. Hits batched"

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah$zza;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_43

    :cond_81
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah$zza;->b()[B

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/net/URL;[B)I

    move-result v0

    goto :goto_6d

    :cond_8a
    const-string/jumbo v1, "Network error uploading hits. status code"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->t()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    const-string/jumbo v0, "Server instructed the client to stop batching"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah;->b:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->a()V

    :cond_b1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_43
.end method

.method protected a()V
    .registers 3

    const-string/jumbo v0, "Network initialized. User agent"

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzah;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method b(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/zzab;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->a(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    :goto_1f
    return-object v1

    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->k()I

    move-result v3

    if-lt v0, v3, :cond_d

    goto :goto_1f
.end method

.method public b()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->o()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    :try_start_14
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_17} :catch_28

    move-result-object v0

    :goto_18
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_20
    const-string/jumbo v0, "No network connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_27
    return v0

    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_18

    :cond_2b
    const/4 v0, 0x1

    goto :goto_27
.end method

.method protected c()V
    .registers 1

    return-void
.end method
