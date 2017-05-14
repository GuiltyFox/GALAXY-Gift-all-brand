.class Landroid/support/v7/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private i:Landroid/content/Intent;

.field private j:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    const-class v0, Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->a:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->b:Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    .line 260
    new-instance v0, Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/support/v7/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->j:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    .line 265
    const/16 v0, 0x32

    iput v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->k:I

    .line 275
    iput-boolean v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->l:Z

    .line 286
    iput-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->m:Z

    .line 294
    iput-boolean v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->n:Z

    .line 299
    iput-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->o:Z

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->g:Landroid/content/Context;

    .line 349
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, ".xml"

    .line 350
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    .line 355
    :goto_59
    return-void

    .line 353
    :cond_5a
    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    goto :goto_59
.end method

.method static synthetic a(Landroid/support/v7/widget/ActivityChooserModel;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;
    .registers 5

    .prologue
    .line 331
    sget-object v1, Landroid/support/v7/widget/ActivityChooserModel;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_3
    sget-object v0, Landroid/support/v7/widget/ActivityChooserModel;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel;

    .line 333
    if-nez v0, :cond_17

    .line 334
    new-instance v0, Landroid/support/v7/widget/ActivityChooserModel;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    sget-object v2, Landroid/support/v7/widget/ActivityChooserModel;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_17
    monitor-exit v1

    return-object v0

    .line 338
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private a(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
    .registers 4

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 729
    if-eqz v0, :cond_17

    .line 730
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->n:Z

    .line 731
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->j()V

    .line 732
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->e()V

    .line 733
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->g()Z

    .line 734
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 736
    :cond_17
    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/ActivityChooserModel;Z)Z
    .registers 2

    .prologue
    .line 91
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->l:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Landroid/support/v7/widget/ActivityChooserModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 567
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->m:Z

    if-nez v0, :cond_e

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->n:Z

    if-nez v0, :cond_13

    .line 578
    :cond_12
    :goto_12
    return-void

    .line 573
    :cond_13
    iput-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->n:Z

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 575
    new-instance v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/support/v7/widget/ActivityChooserModel$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12
.end method

.method private f()V
    .registers 3

    .prologue
    .line 655
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->h()Z

    move-result v0

    .line 656
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->i()Z

    move-result v1

    or-int/2addr v0, v1

    .line 657
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->j()V

    .line 658
    if-eqz v0, :cond_14

    .line 659
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->g()Z

    .line 660
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 662
    :cond_14
    return-void
.end method

.method private g()Z
    .registers 5

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->j:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->i:Landroid/content/Intent;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    .line 673
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->j:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->i:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    .line 675
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 674
    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 676
    const/4 v0, 0x1

    .line 678
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method private h()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 688
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->o:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->i:Landroid/content/Intent;

    if-eqz v1, :cond_38

    .line 689
    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->o:Z

    .line 690
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 691
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->i:Landroid/content/Intent;

    .line 692
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 693
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 694
    :goto_21
    if-ge v1, v3, :cond_37

    .line 695
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 696
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    new-instance v5, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v5, p0, v0}, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    .line 698
    :cond_37
    const/4 v0, 0x1

    .line 700
    :cond_38
    return v0
.end method

.method private i()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 711
    iget-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->l:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->n:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    .line 712
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 713
    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->l:Z

    .line 714
    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->m:Z

    .line 715
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->k()V

    .line 718
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method private j()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 743
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->k:I

    sub-int v3, v0, v1

    .line 744
    if-gtz v3, :cond_e

    .line 754
    :cond_d
    return-void

    .line 747
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->n:Z

    move v1, v2

    .line 748
    :goto_12
    if-ge v1, v3, :cond_d

    .line 749
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 748
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12
.end method

.method private k()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 960
    .line 962
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->g:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_de

    move-result-object v1

    .line 970
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 971
    const-string/jumbo v0, "UTF-8"

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 973
    const/4 v0, 0x0

    .line 974
    :goto_14
    if-eq v0, v8, :cond_1e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    .line 975
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_14

    .line 978
    :cond_1e
    const-string/jumbo v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 979
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_34} :catch_34
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_34} :catch_85
    .catchall {:try_start_9 .. :try_end_34} :catchall_d2

    .line 1015
    :catch_34
    move-exception v0

    .line 1016
    :try_start_35
    sget-object v2, Landroid/support/v7/widget/ActivityChooserModel;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_d2

    .line 1020
    if-eqz v1, :cond_55

    .line 1022
    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_d9

    .line 1028
    :cond_55
    :goto_55
    return-void

    .line 983
    :cond_56
    :try_start_56
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    .line 984
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 987
    :cond_5b
    :goto_5b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_5e} :catch_34
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_85
    .catchall {:try_start_56 .. :try_end_5e} :catchall_d2

    move-result v3

    .line 988
    if-ne v3, v8, :cond_69

    .line 1020
    if-eqz v1, :cond_55

    .line 1022
    :try_start_63
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_55

    .line 1023
    :catch_67
    move-exception v0

    goto :goto_55

    .line 991
    :cond_69
    const/4 v4, 0x3

    if-eq v3, v4, :cond_5b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5b

    .line 994
    :try_start_6f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 995
    const-string/jumbo v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 996
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_85} :catch_34
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_85} :catch_85
    .catchall {:try_start_6f .. :try_end_85} :catchall_d2

    .line 1017
    :catch_85
    move-exception v0

    .line 1018
    :try_start_86
    sget-object v2, Landroid/support/v7/widget/ActivityChooserModel;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catchall {:try_start_86 .. :try_end_a1} :catchall_d2

    .line 1020
    if-eqz v1, :cond_55

    .line 1022
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_55

    .line 1023
    :catch_a7
    move-exception v0

    goto :goto_55

    .line 999
    :cond_a9
    const/4 v3, 0x0

    :try_start_aa
    const-string/jumbo v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    const/4 v4, 0x0

    const-string/jumbo v5, "time"

    .line 1001
    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1002
    const/4 v6, 0x0

    const-string/jumbo v7, "weight"

    .line 1003
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1004
    new-instance v7, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1005
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_d1} :catch_34
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_d1} :catch_85
    .catchall {:try_start_aa .. :try_end_d1} :catchall_d2

    goto :goto_5b

    .line 1020
    :catchall_d2
    move-exception v0

    if-eqz v1, :cond_d8

    .line 1022
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_dc

    .line 1025
    :cond_d8
    :goto_d8
    throw v0

    .line 1023
    :catch_d9
    move-exception v0

    goto/16 :goto_55

    :catch_dc
    move-exception v1

    goto :goto_d8

    .line 963
    :catch_de
    move-exception v0

    goto/16 :goto_55
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 396
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->f()V

    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 399
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public a(Landroid/content/pm/ResolveInfo;)I
    .registers 7

    .prologue
    .line 425
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->f()V

    .line 427
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    .line 428
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 429
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v4, :cond_1f

    .line 430
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 431
    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_1c

    .line 432
    monitor-exit v2

    move v0, v1

    .line 435
    :goto_1b
    return v0

    .line 429
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 435
    :cond_1f
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1b

    .line 436
    :catchall_22
    move-exception v0

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public a(I)Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 411
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->f()V

    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 414
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 367
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->i:Landroid/content/Intent;

    if-ne v0, p1, :cond_9

    .line 369
    monitor-exit v1

    .line 375
    :goto_8
    return-void

    .line 371
    :cond_9
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->i:Landroid/content/Intent;

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->o:Z

    .line 373
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->f()V

    .line 374
    monitor-exit v1

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public a(Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .registers 4

    .prologue
    .line 498
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_3
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->p:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public b(I)Landroid/content/Intent;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 459
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->i:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 460
    monitor-exit v2

    move-object v0, v1

    .line 488
    :goto_a
    return-object v0

    .line 463
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->f()V

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 467
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->i:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 472
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 474
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->p:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v4, :cond_45

    .line 476
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 477
    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->p:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v5, p0, v4}, Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 479
    if-eqz v4, :cond_45

    .line 480
    monitor-exit v2

    move-object v0, v1

    goto :goto_a

    .line 484
    :cond_45
    new-instance v1, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 486
    invoke-direct {p0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->a(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 488
    monitor-exit v2

    goto :goto_a

    .line 489
    :catchall_55
    move-exception v0

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 513
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->f()V

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 519
    :goto_1a
    return-object v0

    .line 518
    :cond_1b
    monitor-exit v1

    .line 519
    const/4 v0, 0x0

    goto :goto_1a

    .line 518
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 642
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->f()V

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 645
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public c(I)V
    .registers 8

    .prologue
    .line 533
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 534
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->f()V

    .line 536
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 537
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 540
    if-eqz v1, :cond_40

    .line 542
    iget v1, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v3, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v1, v3

    .line 548
    :goto_21
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 553
    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActivityChooserModel;->a(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 554
    monitor-exit v2

    .line 555
    return-void

    .line 545
    :cond_40
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_21

    .line 554
    :catchall_43
    move-exception v0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v0
.end method
