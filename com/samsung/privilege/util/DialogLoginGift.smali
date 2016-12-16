.class public Lcom/samsung/privilege/util/DialogLoginGift;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/app/Dialog;

.field private static c:Z

.field private static d:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const-class v0, Lcom/samsung/privilege/util/DialogLoginGift;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    .line 348
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/util/DialogLoginGift;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 88
    sput-object p0, Lcom/samsung/privilege/util/DialogLoginGift;->d:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpParams;
    .registers 12

    .prologue
    .line 599
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 602
    const-string/jumbo v0, "app_id"

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 603
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "app_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v0, ""

    .line 609
    :try_start_2f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_3e} :catch_2ba

    .line 613
    :goto_3e
    const-string/jumbo v1, "client_version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 614
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "client_version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-direct {v0, p0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 619
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v1

    .line 620
    const-string/jumbo v3, "uuid"

    invoke-virtual {v2, v3, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 621
    sget-object v3, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {p0, v1}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 626
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 627
    const-string/jumbo v3, "os"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 628
    sget-object v3, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "os=android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "samsung"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SM-G935F"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    const-string/jumbo v3, "platform"

    invoke-virtual {v2, v3, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 635
    sget-object v3, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "platform="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string/jumbo v1, "sponsorId"

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 640
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sponsorId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->i()Ljava/lang/String;

    move-result-object v1

    .line 645
    const-string/jumbo v3, "mac_address"

    invoke-virtual {v2, v3, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 646
    sget-object v3, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mac_address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 651
    const-string/jumbo v3, "carrier"

    invoke-virtual {v2, v3, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 652
    sget-object v3, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "carrier="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {p0, v1}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 656
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2da

    .line 658
    const-string/jumbo v1, "contact_number"

    invoke-virtual {v2, v1, p3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 659
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contact_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string/jumbo v1, "otp"

    invoke-virtual {v2, v1, p4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 662
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "otp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string/jumbo v1, "refcode"

    invoke-virtual {v2, v1, p5}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 665
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_1e5
    const-string/jumbo v1, "transfer_points"

    const-string/jumbo v3, "manual"

    invoke-virtual {v2, v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 677
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    const-string/jumbo v3, "transfer_points=manual"

    invoke-static {v1, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 682
    sget-object v3, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "strDeviceLanguage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    if-eqz v1, :cond_240

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_240

    .line 684
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2ff

    .line 685
    const-string/jumbo v1, "device_locale"

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 686
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    const-string/jumbo v3, "device_locale=1054"

    invoke-static {v1, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_240
    :goto_240
    const-string/jumbo v1, "imei"

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 712
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :try_start_267
    invoke-static {p0}, Lcom/bzbs/util/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/bzbs/util/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 719
    const-string/jumbo v1, "advertising_id"

    invoke-virtual {v2, v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 720
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "advertising_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28e
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_28e} :catch_312

    .line 728
    :goto_28e
    invoke-static {}, Lcom/bzbs/util/RootUtil;->a()Z

    move-result v0

    .line 729
    const-string/jumbo v1, "device_rooted"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 730
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device_rooted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-object v2

    .line 610
    :catch_2ba
    move-exception v1

    .line 611
    sget-object v3, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get versionName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 669
    :cond_2da
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->a()Ljava/lang/String;

    move-result-object v1

    .line 670
    const-string/jumbo v3, "contact_number"

    invoke-virtual {v2, v3, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 671
    sget-object v3, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact_number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e5

    .line 688
    :cond_2ff
    const-string/jumbo v1, "device_locale"

    const-string/jumbo v3, "1033"

    invoke-virtual {v2, v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 689
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    const-string/jumbo v3, "device_locale=1033"

    invoke-static {v1, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_240

    .line 721
    :catch_312
    move-exception v0

    .line 722
    const-string/jumbo v0, "advertising_id"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 723
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    const-string/jumbo v1, "advertising_id="

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28e
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v2, 0x1

    .line 93
    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;-><init>()V

    .line 94
    invoke-virtual {v0, p0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Landroid/content/Context;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Z)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION READ_PHONE_STATE Denied"

    .line 96
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a([Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v6

    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$1;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v6, v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Lcom/samsung/privilege/util/AddOnPermissions;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a()Lcom/samsung/privilege/util/RxPermissionUtils;

    .line 109
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/auth/version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    const-string/jumbo v0, ""

    .line 278
    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_36} :catch_bb

    .line 282
    :goto_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?client_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string/jumbo v1, ""

    const v2, 0x7f090282

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->d:Landroid/app/ProgressDialog;

    .line 285
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doCheckVersionNote="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 287
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 288
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 289
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 291
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 292
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$7;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/samsung/privilege/util/DialogLoginGift$7;-><init>(JLandroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 346
    :goto_ba
    return-void

    .line 279
    :catch_bb
    move-exception v1

    .line 280
    sget-object v4, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t get versionName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 344
    :cond_db
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/util/DialogLoginGift;->doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageButton;Lcom/facebook/login/widget/LoginButton;)V
    .registers 12

    .prologue
    .line 532
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 533
    new-instance v8, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v8, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 534
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 535
    const v0, 0x7f04012f

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 537
    const v0, 0x7f1001ea

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 538
    const v1, 0x7f100636

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 539
    const v1, 0x7f100637

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    .line 542
    :try_start_38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 543
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    .line 546
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 550
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 551
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 552
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 555
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_75} :catch_9c

    .line 560
    :goto_75
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$13;

    invoke-direct {v0, v8}, Lcom/samsung/privilege/util/DialogLoginGift$13;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$14;

    invoke-direct {v0, v8, p0, p1, p2}, Lcom/samsung/privilege/util/DialogLoginGift$14;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/widget/ImageButton;Lcom/facebook/login/widget/LoginButton;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 591
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 592
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 594
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 596
    :cond_9b
    return-void

    .line 556
    :catch_9c
    move-exception v0

    goto :goto_75
.end method

.method static synthetic a(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 11

    .prologue
    .line 1193
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_92

    .line 1194
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1196
    const v0, 0x7f04011e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1198
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1199
    const v2, 0x7f100570

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1200
    const v3, 0x7f1005ab

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1202
    const v4, 0x7f09035d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    const v0, 0x7f09034b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    const v0, 0x7f090357

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    const v0, 0x7f10056f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1207
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$22;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$22;-><init>(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    const v0, 0x7f1005ae

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1266
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$23;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$23;-><init>(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1322
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1323
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1325
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1327
    :cond_92
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 30

    .prologue
    .line 1487
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3c0

    .line 1488
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1490
    new-instance v10, Landroid/app/Dialog;

    const v2, 0x1030010

    invoke-direct {v10, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1491
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1493
    const v2, 0x7f04011f

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1495
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "fonts/kit55p.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 1496
    const v2, 0x7f1001a2

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1497
    const v2, 0x7f1001a3

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1498
    const v2, 0x7f1001a4

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1499
    const v2, 0x7f1001a5

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1500
    const v2, 0x7f1001a6

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1501
    const v2, 0x7f1001a7

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1502
    const v2, 0x7f1001a8

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1504
    const v2, 0x7f1005e7

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1505
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1033"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c1

    .line 1506
    const v3, 0x7f020295

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1511
    :goto_99
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ae

    .line 1512
    const v3, 0x7f1005eb

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1513
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1516
    :cond_ae
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd/MM/yyyy"

    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v9, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1518
    const-string/jumbo v3, "2"

    if-ne p1, v3, :cond_bf

    .line 1534
    :cond_bf
    const v3, 0x7f1005ed

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    const v3, 0x7f1001c6

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    const-wide/16 v4, 0x0

    cmp-long v3, p6, v4

    if-lez v3, :cond_3c9

    .line 1537
    const v3, 0x7f1001ce

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    :goto_fa
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "female"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e5

    .line 1543
    const v3, 0x7f1001cb

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902f6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    :cond_11a
    :goto_11a
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "northern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_407

    .line 1548
    const v3, 0x7f1001d5

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090315

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1560
    :cond_13a
    :goto_13a
    const v3, 0x7f1001d0

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    const-wide/16 v4, 0x0

    cmp-long v3, p11, v4

    if-lez v3, :cond_167

    .line 1562
    const v3, 0x7f1001d8

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p11

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    :cond_167
    const v3, 0x7f10019d

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p13

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1565
    const-string/jumbo v3, "15000"

    move-object/from16 v0, p14

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b1

    .line 1566
    const v3, 0x7f1001a0

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090304

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1576
    :cond_193
    :goto_193
    const-string/jumbo v3, "Restaurant"

    move-object/from16 v0, p15

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1ab

    .line 1577
    const v3, 0x7f1001a2

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1579
    :cond_1ab
    const-string/jumbo v3, "Dessert"

    move-object/from16 v0, p15

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1c3

    .line 1580
    const v3, 0x7f1001a3

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1582
    :cond_1c3
    const-string/jumbo v3, "Entertainment"

    move-object/from16 v0, p15

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1db

    .line 1583
    const v3, 0x7f1001a4

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1585
    :cond_1db
    const-string/jumbo v3, "Beauty"

    move-object/from16 v0, p15

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1f3

    .line 1586
    const v3, 0x7f1001a5

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1588
    :cond_1f3
    const-string/jumbo v3, "Fashion"

    move-object/from16 v0, p15

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_20b

    .line 1589
    const v3, 0x7f1001a6

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1591
    :cond_20b
    const-string/jumbo v3, "Sport"

    move-object/from16 v0, p15

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_223

    .line 1592
    const v3, 0x7f1001a7

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1594
    :cond_223
    const-string/jumbo v3, "Travel"

    move-object/from16 v0, p15

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_23b

    .line 1595
    const v3, 0x7f1001a8

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1598
    :cond_23b
    const v3, 0x7f1005e6

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1599
    new-instance v4, Lcom/samsung/privilege/util/DialogLoginGift$26;

    invoke-direct {v4, p0, v2, v10}, Lcom/samsung/privilege/util/DialogLoginGift$26;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1617
    const v2, 0x7f1001ce

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 1618
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1619
    new-instance v2, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/samsung/privilege/util/DialogLoginGift$27;

    invoke-direct {v4, v8, v9}, Lcom/samsung/privilege/util/DialogLoginGift$27;-><init>(Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    const/4 v3, 0x1

    .line 1625
    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1628
    new-instance v3, Lcom/samsung/privilege/util/DialogLoginGift$28;

    invoke-direct {v3, v8, v2}, Lcom/samsung/privilege/util/DialogLoginGift$28;-><init>(Landroid/widget/TextView;Landroid/app/DatePickerDialog;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1637
    const v2, 0x7f1001d8

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 1639
    new-instance v2, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/samsung/privilege/util/DialogLoginGift$29;

    invoke-direct {v4, v8, v9}, Lcom/samsung/privilege/util/DialogLoginGift$29;-><init>(Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    const/4 v3, 0x1

    .line 1645
    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1648
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$30;

    invoke-direct {v2, p0, v8}, Lcom/samsung/privilege/util/DialogLoginGift$30;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1657
    const v2, 0x7f1001cb

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1658
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f0902f7

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f0902f6

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1659
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f040178

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1661
    new-instance v5, Lcom/samsung/privilege/util/DialogLoginGift$31;

    invoke-direct {v5, p0, v4, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift$31;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1674
    const v2, 0x7f1001d5

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1675
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f090315

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f090314

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f090312

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x7f090313

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f090317

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x7f090316

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1676
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f040178

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1678
    new-instance v5, Lcom/samsung/privilege/util/DialogLoginGift$32;

    invoke-direct {v5, p0, v4, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift$32;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1691
    const v2, 0x7f1001a0

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1692
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f090304

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f090305

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f090306

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x7f090307

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f090308

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1693
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f040178

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1694
    new-instance v5, Lcom/samsung/privilege/util/DialogLoginGift$33;

    invoke-direct {v5, p0, v4, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift$33;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1707
    const v2, 0x7f1005e1

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1708
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$34;

    move-object v3, p0

    move-object v4, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p13

    move-object v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/DialogLoginGift$34;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1993
    const v2, 0x7f1005e3

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1994
    new-instance v3, Lcom/samsung/privilege/util/DialogLoginGift$35;

    invoke-direct {v3, p0, v10}, Lcom/samsung/privilege/util/DialogLoginGift$35;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2018
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2019
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2020
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2022
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 2024
    :cond_3c0
    return-void

    .line 1508
    :cond_3c1
    const v3, 0x7f020294

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_99

    .line 1539
    :cond_3c9
    const-wide/16 v4, 0x0

    .line 1540
    const v3, 0x7f1001ce

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v6, Ljava/util/Date;

    const-wide/16 v12, 0x3e8

    mul-long/2addr v4, v12

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fa

    .line 1544
    :cond_3e5
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "male"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 1545
    const v3, 0x7f1001cb

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902f7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11a

    .line 1549
    :cond_407
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "northeastern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_429

    .line 1550
    const v3, 0x7f1001d5

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090314

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 1551
    :cond_429
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "central"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44b

    .line 1552
    const v3, 0x7f1001d5

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090312

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 1553
    :cond_44b
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "eastern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46d

    .line 1554
    const v3, 0x7f1001d5

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090313

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 1555
    :cond_46d
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "western"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48f

    .line 1556
    const v3, 0x7f1001d5

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090317

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 1557
    :cond_48f
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "southern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 1558
    const v3, 0x7f1001d5

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090316

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 1567
    :cond_4b1
    const-string/jumbo v3, "25000"

    move-object/from16 v0, p14

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d1

    .line 1568
    const v3, 0x7f1001a0

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090305

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 1569
    :cond_4d1
    const-string/jumbo v3, "35000"

    move-object/from16 v0, p14

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f1

    .line 1570
    const v3, 0x7f1001a0

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090306

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 1571
    :cond_4f1
    const-string/jumbo v3, "45000"

    move-object/from16 v0, p14

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_511

    .line 1572
    const v3, 0x7f1001a0

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090307

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 1573
    :cond_511
    const-string/jumbo v3, "45001-"

    move-object/from16 v0, p14

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 1574
    const v3, 0x7f1001a0

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090308

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 12

    .prologue
    .line 1145
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_65

    .line 1146
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1148
    const v0, 0x7f04011e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1150
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    const v0, 0x7f10056f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1155
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$20;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$20;-><init>(Landroid/app/Dialog;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    const v0, 0x7f1005ae

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1176
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$21;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$21;-><init>(Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1185
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1186
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1188
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1190
    :cond_65
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 13

    .prologue
    .line 1098
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1099
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1101
    const v0, 0x7f040115

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1103
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1104
    const v2, 0x7f1005a9

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1105
    const v3, 0x7f100570

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1106
    const v4, 0x7f1005aa

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/ImageView;

    .line 1108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4c

    .line 1111
    const v0, 0x7f09034e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_4c
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$18;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/samsung/privilege/util/DialogLoginGift$18;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$19;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$19;-><init>(Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1137
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1138
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1140
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1142
    :cond_76
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 88
    invoke-static/range {p0 .. p6}, Lcom/samsung/privilege/util/DialogLoginGift;->doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 88
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 88
    invoke-static/range {p0 .. p7}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 88
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 88
    sput-boolean p0, Lcom/samsung/privilege/util/DialogLoginGift;->c:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .prologue
    const v9, 0x7f0200a7

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 113
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 114
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 116
    const v0, 0x7f090251

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    :cond_2a
    :goto_2a
    return-void

    .line 120
    :cond_2b
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 121
    const v0, 0x7f0903d9

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    .line 125
    :cond_3c
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 126
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 130
    :try_start_42
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_4b

    .line 131
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_134

    .line 136
    :cond_4b
    :goto_4b
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0d00fe

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    .line 138
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    const v1, 0x7f040114

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 140
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    const v1, 0x7f10017e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 142
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    const v1, 0x7f100181

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/LoginButton;

    .line 143
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/facebook/login/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 144
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "public_profile"

    aput-object v2, v1, v6

    const-string/jumbo v2, "user_friends"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 146
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    const v2, 0x7f1005a7

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 147
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10017f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 148
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "402705486466922"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 149
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1054"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 150
    const v3, 0x7f0200a5

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 151
    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 152
    invoke-virtual {v0, v9}, Lcom/facebook/login/widget/LoginButton;->setBackgroundResource(I)V

    .line 155
    :cond_c6
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->A(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v8, :cond_121

    .line 156
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 157
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    :goto_d2
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$3;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$4;

    invoke-direct {v1, p4, p0, p1, p3}, Lcom/samsung/privilege/util/DialogLoginGift$4;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 232
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    const v1, 0x7f1005a8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 233
    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$5;

    invoke-direct {v1}, Lcom/samsung/privilege/util/DialogLoginGift$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 240
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 241
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 243
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 245
    const-string/jumbo v0, "Login Page"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 159
    :cond_121
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 160
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/util/DialogLoginGift$2;-><init>(Landroid/content/Context;Lcom/facebook/login/widget/LoginButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d2

    .line 170
    :cond_130
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_d2

    .line 133
    :catch_134
    move-exception v0

    goto/16 :goto_4b
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    .prologue
    .line 350
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->k(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ea

    .line 351
    new-instance v18, Landroid/app/Dialog;

    const v2, 0x1030010

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 353
    const v2, 0x7f04011c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 355
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/privilege/util/DialogLoginGift;->c:Z

    .line 357
    const v2, 0x7f1005df

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 358
    const v2, 0x7f1005dd

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 359
    const v2, 0x7f100578

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 360
    const v2, 0x7f10057d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 361
    const v2, 0x7f100581

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 362
    const v2, 0x7f100583

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 364
    const v2, 0x7f10057a

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 365
    const v2, 0x7f10057c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 366
    const v2, 0x7f100577

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 367
    const v2, 0x7f100582

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 368
    const v2, 0x7f1005e0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 370
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$8;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/privilege/util/DialogLoginGift$8;-><init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$9;

    invoke-direct {v2, v6}, Lcom/samsung/privilege/util/DialogLoginGift$9;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 486
    new-instance v11, Lcom/samsung/privilege/util/DialogLoginGift$10;

    move-object v12, v9

    move-object v13, v10

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v18}, Lcom/samsung/privilege/util/DialogLoginGift$10;-><init>(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$11;

    invoke-direct {v2, v8}, Lcom/samsung/privilege/util/DialogLoginGift$11;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 515
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$12;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/samsung/privilege/util/DialogLoginGift$12;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 522
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 523
    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 525
    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    .line 529
    :goto_e9
    return-void

    .line 527
    :cond_ea
    const/4 v5, 0x0

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Lcom/samsung/privilege/util/DialogLoginGift;->doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9
.end method

.method private static b(Landroid/content/Context;Lcom/bzbs/bean/BadgeAlert;)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 1053
    const v0, 0x7f09040b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1055
    new-instance v1, Lcom/bzbs/bean/MessageGCM;

    invoke-direct {v1}, Lcom/bzbs/bean/MessageGCM;-><init>()V

    .line 1056
    const-string/jumbo v2, "badge"

    iput-object v2, v1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    .line 1057
    iget-object v2, p1, Lcom/bzbs/bean/BadgeAlert;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 1058
    iget-object v2, p1, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    iput-object v2, v1, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    .line 1060
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, v2}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 1061
    invoke-static {p0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 1062
    invoke-static {v1}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 1063
    iget-object v2, v1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 1065
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v8, :cond_cb

    .line 1066
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_cb

    .line 1067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    .line 1070
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1071
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1073
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    const-string/jumbo v5, "from_noti"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1075
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1079
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1080
    const v5, 0x7f0202a5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1081
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 1082
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1083
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1084
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1086
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1088
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1089
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 1090
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1092
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Badge"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_cb
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 12

    .prologue
    .line 1330
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1331
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1333
    const v0, 0x7f040117

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1335
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1337
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    const v0, 0x7f10016d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1340
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$24;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$24;-><init>(Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1349
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1350
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1352
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1354
    :cond_4f
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 263
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$6;

    invoke-direct {v0, p1, p0}, Lcom/samsung/privilege/util/DialogLoginGift$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 12

    .prologue
    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/profile/me/user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1359
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GetProfileData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1361
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1362
    invoke-virtual {v1, p2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1363
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1364
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1365
    invoke-static {p2}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1366
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$25;

    move-object v4, p3

    move-object v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/privilege/util/DialogLoginGift$25;-><init>(JLandroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1484
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .prologue
    const/4 v5, 0x1

    .line 802
    :try_start_1
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->d:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 803
    if-eqz v0, :cond_24

    .line 804
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 805
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 806
    invoke-static {p2}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_c3

    .line 812
    :cond_24
    :goto_24
    invoke-static {p2}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/auth/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static/range {p2 .. p7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    move-result-object v1

    .line 819
    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 820
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string/jumbo v2, ""

    const v3, 0x7f090282

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->d:Landroid/app/ProgressDialog;

    .line 824
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 825
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 826
    invoke-virtual {v4, p2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    sget-boolean v5, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 827
    invoke-virtual {v4, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    .line 828
    invoke-virtual {v4, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 829
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 830
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$16;

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/privilege/util/DialogLoginGift$16;-><init>(JLjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 831
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 869
    return-void

    .line 808
    :catch_c3
    move-exception v0

    goto/16 :goto_24
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 11

    .prologue
    .line 872
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$17;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$17;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1050
    return-void
.end method

.method static synthetic c()Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d()Z
    .registers 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/samsung/privilege/util/DialogLoginGift;->c:Z

    return v0
.end method

.method private static doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v2, 0x1

    .line 737
    const-string/jumbo v0, ""

    const v1, 0x7f090282

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->d:Landroid/app/ProgressDialog;

    .line 740
    :try_start_11
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->d:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 741
    if-eqz v0, :cond_34

    .line 742
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 743
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 744
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_a4

    .line 750
    :cond_34
    :goto_34
    invoke-static {p1}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/auth/device_login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 755
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 756
    invoke-virtual {v1, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 757
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 758
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 759
    invoke-static/range {p1 .. p6}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 760
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$15;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/privilege/util/DialogLoginGift$15;-><init>(JLjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 761
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 797
    return-void

    .line 746
    :catch_a4
    move-exception v0

    goto :goto_34
.end method
