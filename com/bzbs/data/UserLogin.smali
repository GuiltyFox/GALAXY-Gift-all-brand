.class public Lcom/bzbs/data/UserLogin;
.super Ljava/lang/Object;
.source "UserLogin.java"


# static fields
.field public static ID_ADMIN:Ljava/lang/String;

.field public static PREF_KEY_NOTCLEAR:Ljava/lang/String;

.field public static PREF_KEY_USERLOGIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "UserLogin"

    sput-object v0, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "KeyNotClear"

    sput-object v0, Lcom/bzbs/data/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "(nong.annything){100002093463942},(Buzzebees App){100004153410428},(Kieak Kitti){100002510990024},(anchalikaa){539831171},(miewdivasang){1084857009},(Ann Sopawan){1495332876},(MaleePrincess Pattama){682916828},(Pat PK){100001080248961},(Pongsak Meedanpai){100000537824053},(Dev Suwit){100003763346702},(Aob Zaa){1270290084},(IBaas Yo FuNe){1073075453},(Michael Chen){713132344},(Isis Scrubb){100004734994762},(Pupe Monpeera){600156041},(Kik){711052733},(Max){100001501983286},(admin facebook){100000122640577}"

    sput-object v0, Lcom/bzbs/data/UserLogin;->ID_ADMIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V
    .registers 11
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "objMessageGCM"    # Lcom/bzbs/bean/MessageGCM;

    .prologue
    const/4 v8, 0x0

    .line 630
    sget-object v6, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 631
    .local v4, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "MessageGCM"

    const-string/jumbo v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "str_MessageGCM":Ljava/lang/String;
    if-eqz v5, :cond_44

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 634
    :try_start_1c
    invoke-static {v5}, Lcom/bzbs/util/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_3d

    .line 642
    .local v0, "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    :goto_22
    invoke-virtual {v0, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 645
    sget-object v6, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 646
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 648
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_2f
    const-string/jumbo v6, "MessageGCM"

    invoke-static {v0}, Lcom/bzbs/util/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_4a

    .line 652
    :goto_39
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 653
    return-void

    .line 635
    .end local v0    # "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_3d
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .restart local v0    # "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    goto :goto_22

    .line 639
    .end local v0    # "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    goto :goto_22

    .line 649
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_4a
    move-exception v1

    .line 650
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public static AppendQueueMessagePopup(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    .registers 11
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "objMessagePopup"    # Lcom/bzbs/bean/MessagePopup;

    .prologue
    const/4 v8, 0x0

    .line 568
    sget-object v6, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 569
    .local v4, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "QueueMessagePopup"

    const-string/jumbo v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 570
    .local v5, "str_QueueMessagePopup":Ljava/lang/String;
    if-eqz v5, :cond_44

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 572
    :try_start_1c
    invoke-static {v5}, Lcom/bzbs/util/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_3d

    .line 580
    .local v0, "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    :goto_22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v6, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 584
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 586
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_2f
    const-string/jumbo v6, "QueueMessagePopup"

    invoke-static {v0}, Lcom/bzbs/util/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_4a

    .line 590
    :goto_39
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    return-void

    .line 573
    .end local v0    # "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_3d
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .restart local v0    # "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    goto :goto_22

    .line 577
    .end local v0    # "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    goto :goto_22

    .line 587
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_4a
    move-exception v1

    .line 588
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public static ClearPreferencesFromCurrentBuzzeBeesToken(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 692
    sget-object v2, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 693
    .local v1, "savedSession":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 694
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 696
    return-void
.end method

.method public static ClearPreferencesGIFTDATA(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 699
    const-string/jumbo v2, "GIFTDATA"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 700
    .local v1, "savedSession":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 701
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 702
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 703
    return-void
.end method

.method public static GetAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 234
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "Address"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetAdsId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 159
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TokenBuzzeBees"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetAllMessageGCM(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/MessageGCM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    sget-object v4, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 659
    .local v2, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "MessageGCM"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "str_MessageGCM":Ljava/lang/String;
    if-eqz v3, :cond_2a

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 662
    :try_start_1c
    invoke-static {v3}, Lcom/bzbs/util/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_23

    .line 670
    .local v0, "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    :goto_22
    return-object v0

    .line 663
    .end local v0    # "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    :catch_23
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .restart local v0    # "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    goto :goto_22

    .line 667
    .end local v0    # "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "arrayMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    goto :goto_22
.end method

.method public static GetAndRemoveQueueMessagePopup(Landroid/content/Context;)Lcom/bzbs/bean/MessagePopup;
    .registers 11
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 596
    sget-object v8, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 597
    .local v5, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "QueueMessagePopup"

    const-string/jumbo v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, "str_QueueMessagePopup":Ljava/lang/String;
    if-eqz v6, :cond_50

    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    .line 600
    :try_start_1d
    invoke-static {v6}, Lcom/bzbs/util/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_49

    .line 608
    .local v0, "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    :goto_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_59

    .line 610
    const/4 v8, 0x0

    :try_start_2a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/bean/MessagePopup;

    .line 613
    .local v3, "objMessagePopup":Lcom/bzbs/bean/MessagePopup;
    sget-object v8, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 614
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 615
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v8, "QueueMessagePopup"

    invoke-static {v0}, Lcom/bzbs/util/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 616
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_48} :catch_56

    .line 623
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "objMessagePopup":Lcom/bzbs/bean/MessagePopup;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :goto_48
    return-object v3

    .line 601
    .end local v0    # "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    :catch_49
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .restart local v0    # "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    goto :goto_23

    .line 605
    .end local v0    # "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "arrayMessagePopup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessagePopup;>;"
    goto :goto_23

    .line 619
    :catch_56
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v7

    .line 620
    goto :goto_48

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_59
    move-object v3, v7

    .line 623
    goto :goto_48
.end method

.method public static GetBeaconLastActionTime(Ljava/lang/String;Landroid/content/Context;)J
    .registers 6
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 546
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 547
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BeaconLastActionTime_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 496
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 497
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "CategoryConfig"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 223
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "DisplayName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 190
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "FacebookUID"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetFirstName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 201
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "FirstName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 286
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "GCM_ID"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetIsAcceptTerm(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 355
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 356
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsAcceptTerm"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsAllowUse(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 385
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 386
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsAllowUse"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsCompleteProfileOptional(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 74
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsCompleteProfileOptional"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsCompleteProfileRequire(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 64
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsCompleteProfileRequire"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsCompleteProfileShopping(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 84
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsCompleteProfileShopping"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsHasNewVersion(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 395
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 396
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsHasNewVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsLoginBegin(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsLoginBegin"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsLoginComplete(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 54
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsLoginComplete"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsNFCWarning(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 486
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsNFCWarning"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsNotificationOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 276
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsNotificationOn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsPlayingIntro(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 365
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 366
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsPlayingIntro"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsPremium(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 336
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsPremium"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsShowShoppingBasket(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 426
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 427
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsShowShoppingBasket"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsTokenNeedLogout(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 416
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsTokenNeedLogout"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsshowDialogHasNewVersion(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 476
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsshowDialogHasNewVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetLastName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 212
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 213
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LastName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 506
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 507
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CP_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 516
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 517
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CP_PMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLastResumeTime(Landroid/content/Context;)J
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 466
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LastResumeTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static GetLastUpdateDevice(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 296
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LastUpdateDevice"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLocale(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 245
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "402705486466922"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 248
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "th"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 249
    const-string/jumbo v1, "Locale"

    const-string/jumbo v2, "1054"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    :goto_37
    return-object v1

    .line 251
    :cond_38
    const-string/jumbo v1, "Locale"

    const-string/jumbo v2, "1033"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    .line 253
    :cond_43
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "768830479847872"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 254
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "en"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 255
    const-string/jumbo v1, "Locale"

    const-string/jumbo v2, "1033"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    .line 257
    :cond_74
    const-string/jumbo v1, "Locale"

    const-string/jumbo v2, "1108"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    .line 259
    :cond_7f
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "517155661760483"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 260
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "en"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 261
    const-string/jumbo v1, "Locale"

    const-string/jumbo v2, "1033"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    .line 263
    :cond_b0
    const-string/jumbo v1, "Locale"

    const-string/jumbo v2, "1109"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_37

    .line 266
    :cond_bc
    const-string/jumbo v1, "Locale"

    const-string/jumbo v2, "1033"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_37
.end method

.method public static GetMenuBuzzebeesVisible(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 375
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 376
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "MenuBuzzebeesVisible"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetModeLogin(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 170
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ModeLoginString"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetNotificationUnReadCount(Landroid/content/Context;)I
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 674
    sget-object v2, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 675
    .local v1, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "NotificationUnReadCount"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 676
    .local v0, "count":I
    if-gez v0, :cond_11

    .line 677
    const/4 v0, 0x0

    .line 679
    :cond_11
    return v0
.end method

.method public static GetPoints(Landroid/content/Context;)J
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 316
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "Points"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static GetRank(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 326
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 327
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "Rank"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetShowMyGiftOn(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 436
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 437
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ShowMyGiftOn"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetStickerOrder(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 405
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 406
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "sticker_order"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TokenBuzzeBees"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 98
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "token":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "token_1_digit_frist":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "token_5_digit_last":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 106
    .local v4, "token_for_buy":Ljava/lang/String;
    const-string/jumbo v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    :goto_3f
    return-object v4

    .line 109
    :cond_40
    move-object v4, v0

    goto :goto_3f
.end method

.method public static GetTokenBuzzeBeesSkip(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TokenBuzzeBeesSkip"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetTokenWallet(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 141
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TokenWallet"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetUserCarrier(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 306
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "UserCarrier"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 180
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "userId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetUserUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "UserUUID"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetWalletActive(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "issuer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 536
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 537
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WalletActive_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetWalletAmount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "issuer"    # Ljava/lang/String;

    .prologue
    .line 556
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 557
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WalletAmount_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetWalletCardId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "issuer"    # Ljava/lang/String;

    .prologue
    .line 526
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 527
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WalletCardId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static IS_ADMIN(Landroid/content/Context;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    :try_start_1
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    .line 33
    sget-object v2, Lcom/bzbs/data/UserLogin;->ID_ADMIN:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_35

    move-result v2

    if-eqz v2, :cond_34

    .line 34
    const/4 v1, 0x1

    .line 39
    :cond_34
    :goto_34
    return v1

    .line 38
    :catch_35
    move-exception v0

    .line 39
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_34
.end method

.method public static Logout(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "objActivityContext"    # Landroid/content/Context;
    .param p1, "isAutoLoginFB"    # Z

    .prologue
    .line 723
    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->clearPostAsyncFile(Landroid/content/Context;)V

    .line 724
    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->clearCatchFile(Landroid/content/Context;)V

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->ClearPreferencesFromCurrentBuzzeBeesToken(Landroid/content/Context;)V

    .line 726
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->ClearPreferencesGIFTDATA(Landroid/content/Context;)V

    .line 727
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 728
    .local v1, "nMgr":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/GCMUtil;->unRegisterGCM(Landroid/content/Context;)V

    .line 740
    :try_start_2b
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/login/LoginManager;->logOut()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_46

    .line 748
    :goto_32
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 749
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 750
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 751
    return-void

    .line 741
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_46
    move-exception v2

    goto :goto_32
.end method

.method public static ResetLoginData(Landroid/content/Context;)V
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 706
    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->clearPostAsyncFile(Landroid/content/Context;)V

    .line 707
    invoke-static {p0}, Lcom/bzbs/util/LocalFileHelper;->clearCatchFile(Landroid/content/Context;)V

    .line 708
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->ClearPreferencesFromCurrentBuzzeBeesToken(Landroid/content/Context;)V

    .line 709
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->ClearPreferencesGIFTDATA(Landroid/content/Context;)V

    .line 710
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 711
    .local v0, "nMgr":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 713
    invoke-static {p0}, Lcom/bzbs/util/GCMUtil;->unRegisterGCM(Landroid/content/Context;)V

    .line 716
    :try_start_1b
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->logOut()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_23

    .line 720
    :goto_22
    return-void

    .line 717
    :catch_23
    move-exception v1

    goto :goto_22
.end method

.method public static SetAddress(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "Address"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetAdsId(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "adsId"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "AdsId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetBeaconLastActionTime(Ljava/lang/String;Landroid/content/Context;J)Z
    .registers 8
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "time_sec"    # J

    .prologue
    .line 550
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 551
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BeaconLastActionTime_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetCategoryConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "categoryConfig"    # Ljava/lang/String;

    .prologue
    .line 500
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 501
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "CategoryConfig"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 502
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetDisplayName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "DisplayName"    # Ljava/lang/String;

    .prologue
    .line 228
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DisplayName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetFacebookUID(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "FacebookUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "FirstName"    # Ljava/lang/String;

    .prologue
    .line 206
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "FirstName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "gcm_id"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "GCM_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsAcceptTerm(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_accept_term"    # Z

    .prologue
    .line 359
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsAcceptTerm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsAllowUse(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_allow_use"    # Z

    .prologue
    .line 389
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 390
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsAllowUse"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 391
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsCompleteProfileOptional(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isCompleteProfileOptional"    # Z

    .prologue
    .line 78
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsCompleteProfileOptional"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsCompleteProfileRequire(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isCompleteProfileRequire"    # Z

    .prologue
    .line 68
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsCompleteProfileRequire"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsCompleteProfileShopping(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isCompleteProfileShopping"    # Z

    .prologue
    .line 88
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsCompleteProfileShopping"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsHasNewVersion(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_has_new_version"    # Z

    .prologue
    .line 399
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 400
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsHasNewVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsLoginBegin(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isLoginComplete"    # Z

    .prologue
    .line 48
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsLoginBegin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsLoginComplete(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isLoginComplete"    # Z

    .prologue
    .line 58
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsLoginComplete"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsNFCWarning(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isWarn"    # Z

    .prologue
    .line 490
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsNFCWarning"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsNotificationOn(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 280
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 281
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsNotificationOn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsPlayingIntro(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_playing_intro"    # Z

    .prologue
    .line 369
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsPlayingIntro"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsPremium(Landroid/content/Context;Z)Z
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_premium"    # Z

    .prologue
    .line 340
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v1

    .line 342
    .local v1, "oldValue":Z
    sget-object v3, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "IsPremium"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 346
    .local v2, "result":Z
    if-eq v1, p1, :cond_27

    .line 347
    const-string/jumbo v3, "UserLogin"

    const-string/jumbo v4, "PostEvents.onPremiumChanged();"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/bzbs/event/PostEvents;->onPremiumChanged()V

    .line 351
    :cond_27
    return v2
.end method

.method public static SetIsShowShoppingBasket(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_show_shopping_basket"    # Z

    .prologue
    .line 430
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 431
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsShowShoppingBasket"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsTokenNeedLogout(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_token_need_logout"    # Z

    .prologue
    .line 420
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 421
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsTokenNeedLogout"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 422
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsshowDialogHasNewVersion(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isShow"    # Z

    .prologue
    .line 480
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 481
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsshowDialogHasNewVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "LastName"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LastName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 510
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CP_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "pmsg"    # Ljava/lang/String;

    .prologue
    .line 520
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 521
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CP_PMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastResumeTime(Landroid/content/Context;J)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pLastResumeTime"    # J

    .prologue
    .line 470
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 471
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LastResumeTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastUpdateDevice(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 300
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LastUpdateDevice"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLocale(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "Locale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetMenuBuzzebeesVisible(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isVisible"    # Z

    .prologue
    .line 379
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "MenuBuzzebeesVisible"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetModeLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "ModeLoginString"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetNotificationUnReadCount(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 682
    if-gez p1, :cond_3

    .line 683
    const/4 p1, 0x0

    .line 686
    :cond_3
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "NotificationUnReadCount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetPoints(Landroid/content/Context;J)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "points"    # J

    .prologue
    .line 320
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 321
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "Points"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetRank(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "rank"    # Ljava/lang/String;

    .prologue
    .line 330
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 331
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "Rank"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetShowMyGiftOn(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "strShowMyGiftOn"    # Ljava/lang/String;

    .prologue
    .line 440
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "ShowMyGiftOn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetStickerOrder(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "sticker_order"    # Ljava/lang/String;

    .prologue
    .line 410
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "sticker_order"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 115
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "TokenBuzzeBees"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetTokenBuzzeBeesSkip(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "TokenBuzzeBeesSkip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetTokenWallet(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "TokenWallet"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 310
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "UserCarrier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetUserId(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrUserId"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "userId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetUserUUID(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "UserUUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetWalletActive(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "issuer"    # Ljava/lang/String;
    .param p2, "active"    # Z

    .prologue
    .line 540
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WalletActive_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetWalletAmount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "issuer"    # Ljava/lang/String;
    .param p2, "amount_string"    # Ljava/lang/String;

    .prologue
    .line 560
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 561
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WalletAmount_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetWalletCardId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "issuer"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;

    .prologue
    .line 530
    sget-object v1, Lcom/bzbs/data/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 531
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WalletCardId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static getNotUserFunction(Landroid/content/Context;)Z
    .registers 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 152
    const-string/jumbo v1, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e47\u0e2d\u0e04\u0e2d\u0e34\u0e19\u0e40\u0e02\u0e49\u0e32\u0e2a\u0e39\u0e48\u0e23\u0e30\u0e1a\u0e1a"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    const/4 v0, 0x1

    .line 155
    :cond_19
    return v0
.end method
