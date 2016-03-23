.class public Lcom/bzbs/lib/survey/util/LanguageSetting;
.super Ljava/lang/Object;
.source "LanguageSetting.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/bzbs/lib/survey/util/LanguageSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/LanguageSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "strLocale":Ljava/lang/String;
    sget-object v1, Lcom/bzbs/lib/survey/util/LanguageSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GetLocale|strLocale := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 43
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1054"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 44
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "th"

    const-string/jumbo v3, "TH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_40
    return-object v1

    .line 46
    :cond_41
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "US"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 49
    :cond_4d
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "th"

    const-string/jumbo v3, "TH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public static SetLanguage(Landroid/content/Context;)V
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 15
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 16
    .local v2, "strLocale":Ljava/lang/String;
    if-eqz v2, :cond_51

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 17
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1054"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 18
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v3, "th"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 20
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 21
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 37
    :goto_36
    return-void

    .line 24
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_37
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v3, "en_US"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 25
    .restart local v1    # "locale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 26
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 27
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_36

    .line 31
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_51
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v3, "th"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 32
    .restart local v1    # "locale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 33
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 34
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_36
.end method
