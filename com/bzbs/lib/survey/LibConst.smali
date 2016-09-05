.class public Lcom/bzbs/lib/survey/LibConst;
.super Ljava/lang/Object;
.source "LibConst.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:D

.field public static c:Ljava/lang/String;

.field public static d:Z

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    const-string/jumbo v0, "5248"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->a:Ljava/lang/String;

    .line 62
    const-wide v0, 0x3feb333333333333L    # 0.85

    sput-wide v0, Lcom/bzbs/lib/survey/LibConst;->b:D

    .line 64
    const-string/jumbo v0, "com.samsung.th.galaxyappcenter"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->c:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/LibConst;->d:Z

    .line 66
    const-string/jumbo v0, "https://api.buzzebees.com/"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->e:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "http://buzzebees.blob.core.windows.net/"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->f:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->g:Ljava/lang/String;

    .line 260
    const-string/jumbo v0, "android"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->h:Ljava/lang/String;

    .line 262
    const-string/jumbo v0, "ic.buzzebees"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->i:Ljava/lang/String;

    .line 263
    const-string/jumbo v0, "ic.galaxysocialplus"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 225
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/bzbs/lib/survey/LibConst;->a()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_13
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_1b
    return-object v0

    .line 225
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static a()Z
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
