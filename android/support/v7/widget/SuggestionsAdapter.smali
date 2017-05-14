.class Landroid/support/v7/widget/SuggestionsAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final j:Landroid/app/SearchManager;

.field private final k:Landroid/support/v7/widget/SearchView;

.field private final l:Landroid/app/SearchableInfo;

.field private final m:Landroid/content/Context;

.field private final n:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final o:I

.field private p:Z

.field private q:I

.field private r:Landroid/content/res/ColorStateList;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 95
    invoke-virtual {p2}, Landroid/support/v7/widget/SearchView;->getSuggestionRowLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v3}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->p:Z

    .line 75
    iput v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->q:I

    .line 83
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->s:I

    .line 84
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->t:I

    .line 85
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->u:I

    .line 86
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->v:I

    .line 87
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->w:I

    .line 88
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->x:I

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->d:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->j:Landroid/app/SearchManager;

    .line 98
    iput-object p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->k:Landroid/support/v7/widget/SearchView;

    .line 99
    iput-object p3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->l:Landroid/app/SearchableInfo;

    .line 100
    invoke-virtual {p2}, Landroid/support/v7/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->o:I

    .line 103
    iput-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->m:Landroid/content/Context;

    .line 105
    iput-object p4, p0, Landroid/support/v7/widget/SuggestionsAdapter;->n:Ljava/util/WeakHashMap;

    .line 106
    return-void
.end method

.method private a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 602
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 604
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 605
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 606
    if-nez v0, :cond_19

    move-object v0, v1

    .line 613
    :goto_18
    return-object v0

    .line 606
    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_18

    .line 609
    :cond_24
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->b(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 611
    if-nez v0, :cond_30

    .line 612
    :goto_2a
    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 611
    :cond_30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    goto :goto_2a
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 484
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move-object v0, v1

    .line 516
    :cond_13
    :goto_13
    return-object v0

    .line 489
    :cond_14
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->m:Landroid/content/Context;

    .line 492
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 495
    if-nez v0, :cond_13

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->m:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 501
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_4c} :catch_4d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_4c} :catch_60

    goto :goto_13

    .line 503
    :catch_4d
    move-exception v0

    .line 505
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    if-nez v0, :cond_13

    .line 509
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 510
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->b(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 511
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    .line 513
    :catch_60
    move-exception v0

    .line 515
    const-string/jumbo v0, "SuggestionsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Icon resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 516
    goto :goto_13
.end method

.method private static a(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 658
    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 667
    :goto_4
    return-object v0

    .line 662
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    goto :goto_4

    .line 663
    :catch_a
    move-exception v1

    .line 664
    const-string/jumbo v2, "SuggestionsAdapter"

    const-string/jumbo v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 653
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 654
    invoke-static {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    if-nez p2, :cond_a

    .line 391
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    :goto_9
    return-void

    .line 393
    :cond_a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 401
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_9
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 352
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 355
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :goto_e
    return-void

    .line 357
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    .line 569
    if-eqz p2, :cond_b

    .line 570
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->n:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_b
    return-void
.end method

.method private b(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 624
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 627
    const/16 v2, 0x80

    :try_start_9
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_14

    move-result-object v2

    .line 632
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 633
    if-nez v3, :cond_20

    .line 641
    :goto_13
    return-object v0

    .line 628
    :catch_14
    move-exception v1

    .line 629
    const-string/jumbo v2, "SuggestionsAdapter"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 634
    :cond_20
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 635
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 636
    if-nez v1, :cond_56

    .line 637
    const-string/jumbo v1, "SuggestionsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid icon resource "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_56
    move-object v0, v1

    .line 641
    goto :goto_13
.end method

.method private b(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 527
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 528
    const-string/jumbo v2, "android.resource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_2e

    move-result v0

    if-eqz v0, :cond_5a

    .line 531
    :try_start_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_11} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_11} :catch_2e

    move-result-object v0

    .line 553
    :goto_12
    return-object v0

    .line 532
    :catch_13
    move-exception v0

    .line 533
    :try_start_14
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_2e} :catch_2e

    .line 551
    :catch_2e
    move-exception v0

    .line 552
    const-string/jumbo v2, "SuggestionsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Icon not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 553
    goto :goto_12

    .line 537
    :cond_5a
    :try_start_5a
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 538
    if-nez v2, :cond_80

    .line 539
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_80
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_80} :catch_2e

    .line 542
    :cond_80
    const/4 v0, 0x0

    :try_start_81
    invoke-static {v2, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_a6

    move-result-object v0

    .line 545
    :try_start_85
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_88} :catch_2e

    goto :goto_12

    .line 546
    :catch_89
    move-exception v2

    .line 547
    :try_start_8a
    const-string/jumbo v3, "SuggestionsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error closing icon stream for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_a4} :catch_2e

    goto/16 :goto_12

    .line 544
    :catchall_a6
    move-exception v0

    .line 545
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_aa} :catch_2e

    .line 548
    :goto_aa
    :try_start_aa
    throw v0

    .line 546
    :catch_ab
    move-exception v2

    .line 547
    const-string/jumbo v3, "SuggestionsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error closing icon stream for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_c6} :catch_2e

    goto :goto_aa
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 560
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 561
    if-nez v0, :cond_c

    .line 562
    const/4 v0, 0x0

    .line 565
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_b
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->r:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_25

    .line 338
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 339
    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->textColorSearchUrl:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 340
    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->r:Landroid/content/res/ColorStateList;

    .line 343
    :cond_25
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 344
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Landroid/support/v7/widget/SuggestionsAdapter;->r:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 345
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    .line 344
    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 347
    return-object v6
.end method

.method private d(Landroid/database/Cursor;)V
    .registers 4

    .prologue
    .line 195
    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    :goto_6
    if-eqz v0, :cond_11

    const-string/jumbo v1, "in_progress"

    .line 204
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 208
    :cond_11
    return-void

    .line 195
    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private e(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 362
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 363
    const/4 v0, 0x0

    .line 370
    :cond_6
    :goto_6
    return-object v0

    .line 365
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->v:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 367
    if-nez v0, :cond_6

    .line 370
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->g(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method private f(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 374
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 375
    const/4 v0, 0x0

    .line 378
    :goto_6
    return-object v0

    .line 377
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->w:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method private g(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->l:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_d

    .line 589
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method a(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 714
    if-nez p1, :cond_4

    .line 755
    :cond_3
    :goto_3
    return-object v2

    .line 718
    :cond_4
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_3

    .line 723
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "content"

    .line 724
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 725
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 726
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 727
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 730
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    .line 731
    if-eqz v1, :cond_31

    .line 732
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 736
    :cond_31
    const-string/jumbo v1, "search_suggest_query"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 739
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 742
    if-eqz v3, :cond_5f

    .line 743
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 748
    :goto_43
    if-lez p3, :cond_4f

    .line 749
    const-string/jumbo v1, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 752
    :cond_4f
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 755
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_3

    .line 745
    :cond_5f
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v4, v2

    goto :goto_43
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 146
    if-nez p1, :cond_18

    const-string/jumbo v0, ""

    .line 152
    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->k:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->k:Landroid/support/v7/widget/SearchView;

    .line 153
    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_1d

    :cond_16
    move-object v0, v1

    .line 169
    :goto_17
    return-object v0

    .line 146
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 157
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->l:Landroid/app/SearchableInfo;

    const/16 v3, 0x32

    invoke-virtual {p0, v2, v0, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_35

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_17

    .line 164
    :catch_2b
    move-exception v0

    .line 165
    const-string/jumbo v2, "SuggestionsAdapter"

    const-string/jumbo v3, "Search suggestions query threw an exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    move-object v0, v1

    .line 169
    goto :goto_17
.end method

.method a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 676
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 679
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_26
    :try_start_26
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_2f} :catch_50

    move-result-object v3

    .line 687
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 688
    if-nez v1, :cond_6b

    .line 689
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :catch_50
    move-exception v0

    .line 684
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No package found for authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_6b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 693
    if-ne v0, v6, :cond_b3

    .line 695
    const/4 v0, 0x0

    :try_start_72
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_7b} :catch_98

    move-result v0

    .line 704
    :goto_7c
    if-nez v0, :cond_e1

    .line 705
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No resource found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :catch_98
    move-exception v0

    .line 697
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Single path segment is not a resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_b3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_c7

    .line 700
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_7c

    .line 702
    :cond_c7
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "More than two path segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_e1
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 245
    new-instance v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    sget v0, Landroid/support/v7/appcompat/R$id;->edit_query:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 249
    iget v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->o:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    return-object v1
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 118
    iput p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->q:I

    .line 119
    return-void
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 5

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->p:Z

    if-eqz v0, :cond_13

    .line 218
    const-string/jumbo v0, "SuggestionsAdapter"

    const-string/jumbo v1, "Tried to change cursor after adapter was closed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_12
    :goto_12
    return-void

    .line 224
    :cond_13
    :try_start_13
    invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 226
    if-eqz p1, :cond_12

    .line 227
    const-string/jumbo v0, "suggest_text_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->s:I

    .line 228
    const-string/jumbo v0, "suggest_text_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->t:I

    .line 229
    const-string/jumbo v0, "suggest_text_2_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->u:I

    .line 230
    const-string/jumbo v0, "suggest_icon_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->v:I

    .line 231
    const-string/jumbo v0, "suggest_icon_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->w:I

    .line 232
    const-string/jumbo v0, "suggest_flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->x:I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4e} :catch_4f

    goto :goto_12

    .line 234
    :catch_4f
    move-exception v0

    .line 235
    const-string/jumbo v1, "SuggestionsAdapter"

    const-string/jumbo v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 278
    iget v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->x:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a7

    .line 279
    iget v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->x:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 281
    :goto_16
    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_25

    .line 282
    iget v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->s:I

    invoke-static {p3, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 283
    iget-object v4, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 285
    :cond_25
    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_4e

    .line 287
    iget v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->u:I

    invoke-static {p3, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 288
    if-eqz v3, :cond_8b

    .line 289
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 296
    :goto_35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 297
    iget-object v4, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_49

    .line 298
    iget-object v4, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 299
    iget-object v4, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 307
    :cond_49
    :goto_49
    iget-object v4, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->b:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 310
    :cond_4e
    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->c:Landroid/widget/ImageView;

    if-eqz v3, :cond_5c

    .line 311
    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->c:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->e(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v3, v4, v5}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 313
    :cond_5c
    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->d:Landroid/widget/ImageView;

    if-eqz v3, :cond_69

    .line 314
    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->d:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->f(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v3, v4, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 316
    :cond_69
    iget v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->q:I

    if-eq v3, v7, :cond_75

    iget v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->q:I

    if-ne v3, v6, :cond_a1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a1

    .line 319
    :cond_75
    iget-object v1, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v1, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->e:Landroid/widget/ImageView;

    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 321
    iget-object v0, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    :goto_8a
    return-void

    .line 291
    :cond_8b
    iget v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->t:I

    invoke-static {p3, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    .line 302
    :cond_92
    iget-object v4, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_49

    .line 303
    iget-object v4, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 304
    iget-object v4, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_49

    .line 323
    :cond_a1
    iget-object v0, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8a

    :cond_a7
    move v1, v2

    goto/16 :goto_16
.end method

.method public c(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 415
    if-nez p1, :cond_4

    .line 438
    :cond_3
    :goto_3
    return-object v0

    .line 419
    :cond_4
    const-string/jumbo v1, "suggest_intent_query"

    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_f

    move-object v0, v1

    .line 421
    goto :goto_3

    .line 424
    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->l:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 425
    const-string/jumbo v1, "suggest_intent_data"

    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_22

    move-object v0, v1

    .line 427
    goto :goto_3

    .line 431
    :cond_22
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->l:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    const-string/jumbo v1, "suggest_text_1"

    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 434
    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 450
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 460
    :goto_4
    return-object v0

    .line 451
    :catch_5
    move-exception v2

    .line 452
    const-string/jumbo v0, "SuggestionsAdapter"

    const-string/jumbo v1, "Search suggestions cursor threw exception."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_28

    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 457
    iget-object v0, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->a:Landroid/widget/TextView;

    .line 458
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    move-object v0, v1

    .line 460
    goto :goto_4
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/widget/SuggestionsAdapter;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->d(Landroid/database/Cursor;)V

    .line 184
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/SuggestionsAdapter;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->d(Landroid/database/Cursor;)V

    .line 192
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 330
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    .line 331
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->k:Landroid/support/v7/widget/SearchView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 333
    :cond_f
    return-void
.end method
