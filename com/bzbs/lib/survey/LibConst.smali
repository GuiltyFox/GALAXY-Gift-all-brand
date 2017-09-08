.class public Lcom/bzbs/lib/survey/LibConst;
.super Ljava/lang/Object;
.source "LibConst.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static f:D

.field public static final g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Z

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    const-string/jumbo v0, "MzEzNTAzNjgyMTQ1OTk1"

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->a:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "NTI0OA=="

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->b:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "Zm9udHMvSEFSTE9XU0kuVFRG"

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->c:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "Zm9udHMvRFNOU0tXXy5UVEY="

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->d:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "Zm9udHMva2l0NTVwLnR0Zg=="

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->e:Ljava/lang/String;

    .line 64
    const-wide v0, 0x3feb333333333333L    # 0.85

    sput-wide v0, Lcom/bzbs/lib/survey/LibConst;->f:D

    .line 65
    const-string/jumbo v0, "R2FsYXh5UmV3YXJk"

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->g:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "Y29tLnNhbXN1bmcudGguZ2FsYXh5YXBwY2VudGVy"

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->h:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/LibConst;->i:Z

    .line 68
    const-string/jumbo v0, "aHR0cHM6Ly9hcGkuYnV6emViZWVzLmNvbS8="

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->j:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "aHR0cHM6Ly9idXp6ZWJlZXMuYmxvYi5jb3JlLndpbmRvd3MubmV0Lw=="

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->k:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "VUEtNTI1MzQ4MzgtMQ=="

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->l:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->m:Ljava/lang/String;

    .line 262
    const-string/jumbo v0, "android"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->n:Ljava/lang/String;

    .line 264
    const-string/jumbo v0, "ic.buzzebees"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->o:Ljava/lang/String;

    .line 265
    const-string/jumbo v0, "ic.galaxysocialplus"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
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

    .line 228
    :goto_1b
    return-object v0

    .line 227
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
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 258
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

    .line 259
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
