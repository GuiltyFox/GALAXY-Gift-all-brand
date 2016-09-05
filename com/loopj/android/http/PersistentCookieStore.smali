.class public Lcom/loopj/android/http/PersistentCookieStore;
.super Ljava/lang/Object;
.source "PersistentCookieStore.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/CookieStore;


# static fields
.field private static final COOKIE_NAME_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final COOKIE_NAME_STORE:Ljava/lang/String; = "names"

.field private static final COOKIE_PREFS:Ljava/lang/String; = "CookiePrefsFile"

.field private static final LOG_TAG:Ljava/lang/String; = "PersistentCookieStore"


# instance fields
.field private final cookiePrefs:Landroid/content/SharedPreferences;

.field private final cookies:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private omitNonPersistentCookies:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/loopj/android/http/PersistentCookieStore;->omitNonPersistentCookies:Z

    .line 61
    const-string/jumbo v1, "CookiePrefsFile"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    .line 62
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "names"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_60

    .line 67
    const-string/jumbo v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 68
    array-length v2, v1

    :goto_2a
    if-ge v0, v2, :cond_58

    aget-object v3, v1, v0

    .line 69
    iget-object v4, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cookie_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    if-eqz v4, :cond_55

    .line 71
    invoke-virtual {p0, v4}, Lcom/loopj/android/http/PersistentCookieStore;->decodeCookie(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/Cookie;

    move-result-object v4

    .line 72
    if-eqz v4, :cond_55

    .line 73
    iget-object v5, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 79
    :cond_58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/PersistentCookieStore;->clearExpired(Ljava/util/Date;)Z

    .line 81
    :cond_60
    return-void
.end method


# virtual methods
.method public addCookie(Lcz/msebera/android/httpclient/cookie/Cookie;)V
    .registers 7

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/loopj/android/http/PersistentCookieStore;->omitNonPersistentCookies:Z

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->e()Z

    move-result v0

    if-nez v0, :cond_b

    .line 101
    :goto_a
    return-void

    .line 87
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/cookie/Cookie;->a(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 91
    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_34
    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "names"

    const-string/jumbo v3, ","

    iget-object v4, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cookie_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/SerializableCookie;

    invoke-direct {v2, p1}, Lcom/loopj/android/http/SerializableCookie;-><init>(Lcz/msebera/android/httpclient/cookie/Cookie;)V

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/PersistentCookieStore;->encodeCookie(Lcom/loopj/android/http/SerializableCookie;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_a

    .line 93
    :cond_71
    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34
.end method

.method protected byteArrayToHexString([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    array-length v2, p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_23

    aget-byte v3, p1, v0

    .line 227
    and-int/lit16 v3, v3, 0xff

    .line 228
    const/16 v4, 0x10

    if-ge v3, v4, :cond_19

    .line 229
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    :cond_19
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 233
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cookie_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 110
    :cond_34
    const-string/jumbo v0, "names"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    iget-object v0, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 115
    return-void
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .registers 7

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 122
    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 125
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->a(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 127
    iget-object v0, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cookie_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    const/4 v0, 0x1

    :goto_4d
    move v2, v0

    .line 135
    goto :goto_12

    .line 138
    :cond_4f
    if-eqz v2, :cond_64

    .line 139
    const-string/jumbo v0, "names"

    const-string/jumbo v1, ","

    iget-object v4, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    :cond_64
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return v2

    :cond_68
    move v0, v2

    goto :goto_4d
.end method

.method protected decodeCookie(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/Cookie;
    .registers 7

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/PersistentCookieStore;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 203
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 204
    const/4 v1, 0x0

    .line 206
    :try_start_a
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/SerializableCookie;

    invoke-virtual {v0}, Lcom/loopj/android/http/SerializableCookie;->getCookie()Lcz/msebera/android/httpclient/cookie/Cookie;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_18} :catch_28

    move-result-object v0

    .line 214
    :goto_19
    return-object v0

    .line 208
    :catch_1a
    move-exception v0

    .line 209
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v3, "PersistentCookieStore"

    const-string/jumbo v4, "IOException in decodeCookie"

    invoke-interface {v2, v3, v4, v0}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 212
    goto :goto_19

    .line 210
    :catch_28
    move-exception v0

    .line 211
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v3, "PersistentCookieStore"

    const-string/jumbo v4, "ClassNotFoundException in decodeCookie"

    invoke-interface {v2, v3, v4, v0}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_19
.end method

.method public deleteCookie(Lcz/msebera/android/httpclient/cookie/Cookie;)V
    .registers 6

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cookie_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method protected encodeCookie(Lcom/loopj/android/http/SerializableCookie;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 181
    if-nez p1, :cond_4

    .line 192
    :goto_3
    return-object v0

    .line 183
    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    :try_start_9
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 186
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_1a

    .line 192
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/PersistentCookieStore;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 187
    :catch_1a
    move-exception v1

    .line 188
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v3, "PersistentCookieStore"

    const-string/jumbo v4, "IOException in encodeCookie"

    invoke-interface {v2, v3, v4, v1}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getCookies()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/loopj/android/http/PersistentCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected hexStringToByteArray(Ljava/lang/String;)[B
    .registers 9

    .prologue
    const/16 v6, 0x10

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 244
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 245
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_2a

    .line 246
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 245
    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    .line 248
    :cond_2a
    return-object v2
.end method

.method public setOmitNonPersistentCookies(Z)V
    .registers 2

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/loopj/android/http/PersistentCookieStore;->omitNonPersistentCookies:Z

    .line 159
    return-void
.end method
