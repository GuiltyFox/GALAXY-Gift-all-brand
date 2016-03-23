.class public Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/SimplePrefsStorage;
.super Ljava/lang/Object;
.source "SimplePrefsStorage.java"


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "jsonprefs"

.field public static final PREFS_NAME:Ljava/lang/String; = "simpleprefs"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "simpleprefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/SimplePrefsStorage;->mPrefs:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 23
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/SimplePrefsStorage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public getData()Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 30
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v2, "retval":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/SimplePrefsStorage;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "jsonprefs"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "jsonstr":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 34
    :try_start_11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_18

    .end local v2    # "retval":Lorg/json/JSONObject;
    .local v3, "retval":Lorg/json/JSONObject;
    move-object v2, v3

    .line 39
    .end local v3    # "retval":Lorg/json/JSONObject;
    .restart local v2    # "retval":Lorg/json/JSONObject;
    :cond_17
    :goto_17
    return-object v2

    .line 35
    :catch_18
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    const-class v4, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/SimplePrefsStorage;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public save(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/SimplePrefsStorage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "jsonprefs"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method
