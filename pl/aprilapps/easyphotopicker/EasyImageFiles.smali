.class Lpl/aprilapps/easyphotopicker/EasyImageFiles;
.super Ljava/lang/Object;
.source "EasyImageFiles.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string/jumbo v0, "EasyImage"

    sput-object v0, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "Temp"

    sput-object v0, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .registers 7

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 89
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 92
    invoke-static {v0, v2}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a(Ljava/io/InputStream;Ljava/io/File;)V

    .line 93
    return-object v2
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 27
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pl.aprilapps.folder_name"

    sget-object v2, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 6

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 73
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 75
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_19

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_9

    .line 82
    :catch_14
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :goto_18
    return-void

    .line 78
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 79
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_14

    goto :goto_18
.end method

.method private static a()Z
    .registers 2

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pl.aprilapps.public_temp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    if-eqz v0, :cond_1c

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 33
    :goto_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_1b
    return-object v0

    .line 32
    :cond_1c
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_12
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 140
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_1d
    return-object v0

    .line 145
    :cond_1e
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/io/File;

    sget-object v2, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_1d
    return-object v1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 102
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 103
    const/4 v0, 0x0

    .line 104
    if-eqz v1, :cond_b

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_b
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pl.aprilapps.folder_location"

    .line 108
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 115
    invoke-static {}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 119
    :cond_e
    new-instance v1, Ljava/io/File;

    sget-object v2, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 121
    :cond_1e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ".jpg"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_1a
    return-object v0
.end method
