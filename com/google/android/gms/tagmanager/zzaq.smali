.class Lcom/google/android/gms/tagmanager/zzaq;
.super Ljava/lang/Object;


# instance fields
.field private final zzRr:J

.field private final zzbdQ:J

.field private final zzbdR:J

.field private zzbdS:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzaq;->zzbdQ:J

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzaq;->zzRr:J

    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/zzaq;->zzbdR:J

    return-void
.end method


# virtual methods
.method zzEH()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzaq;->zzbdQ:J

    return-wide v0
.end method

.method zzEI()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzaq;->zzbdR:J

    return-wide v0
.end method

.method zzEJ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaq;->zzbdS:Ljava/lang/String;

    return-object v0
.end method

.method zzfr(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaq;->zzbdS:Ljava/lang/String;

    goto :goto_c
.end method
