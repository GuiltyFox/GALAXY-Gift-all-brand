.class abstract Lcom/google/android/gms/analytics/internal/zzq;
.super Lcom/google/android/gms/analytics/internal/zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/analytics/internal/zzp;",
        ">",
        "Lcom/google/android/gms/analytics/internal/zzc;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/analytics/internal/zzq$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/analytics/internal/zzq$zza",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzq$zza;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/internal/zzf;",
            "Lcom/google/android/gms/analytics/internal/zzq$zza",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzc;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzq;->a:Lcom/google/android/gms/analytics/internal/zzq$zza;

    return-void
.end method

.method private a(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/analytics/internal/zzp;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_7
    const/4 v1, 0x1

    if-eq v0, v1, :cond_76

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzq;->a:Lcom/google/android/gms/analytics/internal/zzq$zza;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzq$zza;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    :goto_43
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_7

    :cond_48
    const-string/jumbo v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    if-eqz v1, :cond_43

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzq;->a:Lcom/google/android/gms/analytics/internal/zzq$zza;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzq$zza;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_6e} :catch_6f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6e} :catch_b4

    goto :goto_43

    :catch_6f
    move-exception v0

    const-string/jumbo v1, "Error parsing tracker configuration file"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzq;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzq;->a:Lcom/google/android/gms/analytics/internal/zzq$zza;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/zzq$zza;->b()Lcom/google/android/gms/analytics/internal/zzp;

    move-result-object v0

    return-object v0

    :cond_7d
    :try_start_7d
    const-string/jumbo v1, "bool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_9f} :catch_6f
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_9f} :catch_b4

    move-result v2

    if-nez v2, :cond_43

    :try_start_a2
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzq;->a:Lcom/google/android/gms/analytics/internal/zzq$zza;

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/analytics/internal/zzq$zza;->a(Ljava/lang/String;Z)V
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_ab} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_ab} :catch_6f
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ab} :catch_b4

    goto :goto_43

    :catch_ac
    move-exception v0

    :try_start_ad
    const-string/jumbo v2, "Error parsing bool configuration value"

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/analytics/internal/zzq;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ad .. :try_end_b3} :catch_6f
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b3} :catch_b4

    goto :goto_43

    :catch_b4
    move-exception v0

    const-string/jumbo v1, "Error parsing tracker configuration file"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzq;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_76

    :cond_bc
    :try_start_bc
    const-string/jumbo v1, "integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bc .. :try_end_de} :catch_6f
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_de} :catch_b4

    move-result v2

    if-nez v2, :cond_43

    :try_start_e1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzq;->a:Lcom/google/android/gms/analytics/internal/zzq$zza;

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/analytics/internal/zzq$zza;->a(Ljava/lang/String;I)V
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_e1 .. :try_end_ea} :catch_ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e1 .. :try_end_ea} :catch_6f
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ea} :catch_b4

    goto/16 :goto_43

    :catch_ec
    move-exception v0

    :try_start_ed
    const-string/jumbo v2, "Error parsing int configuration value"

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/analytics/internal/zzq;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ed .. :try_end_f3} :catch_6f
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f3} :catch_b4

    goto/16 :goto_43
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/analytics/internal/zzp;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzq;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzq;->a(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/analytics/internal/zzp;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const-string/jumbo v1, "inflate() called with unknown resourceId"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_14
.end method
