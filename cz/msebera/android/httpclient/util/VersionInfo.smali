.class public Lcz/msebera/android/httpclient/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string/jumbo v0, "Package identifier"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->a:Ljava/lang/String;

    .line 92
    if-eqz p2, :cond_1c

    :goto_d
    iput-object p2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->b:Ljava/lang/String;

    .line 93
    if-eqz p3, :cond_20

    :goto_11
    iput-object p3, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->c:Ljava/lang/String;

    .line 94
    if-eqz p4, :cond_24

    :goto_15
    iput-object p4, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->d:Ljava/lang/String;

    .line 95
    if-eqz p5, :cond_28

    :goto_19
    iput-object p5, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->e:Ljava/lang/String;

    .line 96
    return-void

    .line 92
    :cond_1c
    const-string/jumbo p2, "UNAVAILABLE"

    goto :goto_d

    .line 93
    :cond_20
    const-string/jumbo p3, "UNAVAILABLE"

    goto :goto_11

    .line 94
    :cond_24
    const-string/jumbo p4, "UNAVAILABLE"

    goto :goto_15

    .line 95
    :cond_28
    const-string/jumbo p5, "UNAVAILABLE"

    goto :goto_19
.end method

.method public static a(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 225
    const-string/jumbo v0, "Package identifier"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    if-eqz p1, :cond_44

    .line 232
    :goto_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    .line 233
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "version.properties"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2f} :catch_52

    move-result-object v2

    .line 234
    if-eqz v2, :cond_57

    .line 236
    :try_start_32
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 237
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_4d

    .line 240
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_55

    .line 248
    :goto_3d
    if-eqz v0, :cond_43

    .line 249
    invoke-static {p0, v0, p1}, Lcz/msebera/android/httpclient/util/VersionInfo;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;

    move-result-object v1

    .line 252
    :cond_43
    return-object v1

    .line 226
    :cond_44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_9

    .line 240
    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52

    .line 243
    :catch_52
    move-exception v0

    move-object v0, v1

    goto :goto_3d

    :catch_55
    move-exception v2

    goto :goto_3d

    :cond_57
    move-object v0, v1

    goto :goto_3d
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcz/msebera/android/httpclient/util/VersionInfo;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 268
    const-string/jumbo v0, "Package identifier"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    if-eqz p1, :cond_69

    .line 274
    const-string/jumbo v0, "info.module"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_67

    move-object v1, v5

    .line 279
    :goto_1c
    const-string/jumbo v0, "info.release"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_36

    const-string/jumbo v2, "${pom.version}"

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_36
    move-object v2, v5

    .line 285
    :goto_37
    const-string/jumbo v0, "info.timestamp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    if-eqz v0, :cond_61

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_51

    const-string/jumbo v3, "${mvn.timestamp}"

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    :cond_51
    move-object v4, v5

    move-object v3, v2

    move-object v2, v1

    .line 295
    :goto_54
    if-eqz p2, :cond_5a

    .line 296
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    :cond_5a
    new-instance v0, Lcz/msebera/android/httpclient/util/VersionInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/util/VersionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_61
    move-object v4, v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_54

    :cond_65
    move-object v2, v0

    goto :goto_37

    :cond_67
    move-object v1, v0

    goto :goto_1c

    :cond_69
    move-object v4, v5

    move-object v3, v5

    move-object v2, v5

    goto :goto_54
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x3a

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->a:Ljava/lang/String;

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->c:Ljava/lang/String;

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->e:Ljava/lang/String;

    .line 162
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    const-string/jumbo v1, "VersionInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->a:Ljava/lang/String;

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v1, "UNAVAILABLE"

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_55
    const-string/jumbo v1, "UNAVAILABLE"

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_69
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v1, "UNAVAILABLE"

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 179
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
