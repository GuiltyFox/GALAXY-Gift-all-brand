.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/BaseFragmentActivityJB;
.source "FragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field mNextCandidateRequestIndex:I

.field mOptionsMenuInvalidated:Z

.field mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;-><init>()V

    .line 92
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Landroid/support/v4/app/FragmentController;->a(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    .line 1005
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method private allocateRequestIndex(Landroid/support/v4/app/Fragment;)I
    .registers 6

    .prologue
    const v3, 0xfffe

    .line 967
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-lt v0, v3, :cond_14

    .line 968
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->g(I)I

    move-result v0

    if-ltz v0, :cond_26

    .line 973
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_14

    .line 977
    :cond_26
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 978
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 979
    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 982
    return v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 8

    .prologue
    .line 767
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    if-nez p3, :cond_c

    .line 769
    const-string/jumbo v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    :cond_b
    return-void

    .line 772
    :cond_c
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 776
    check-cast p3, Landroid/view/ViewGroup;

    .line 777
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 778
    if-lez v1, :cond_b

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 782
    const/4 v0, 0x0

    :goto_34
    if-ge v0, v1, :cond_b

    .line 783
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_34
.end method

.method private requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 990
    const/4 v0, -0x1

    if-ne p3, v0, :cond_8

    .line 991
    invoke-static {p0, p2, p3}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1003
    :goto_7
    return-void

    .line 994
    :cond_8
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 996
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 997
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 998
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_21

    .line 1001
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    goto :goto_7

    :catchall_21
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw v0
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 702
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_15c

    .line 710
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    :goto_39
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_136

    move v0, v1

    :goto_40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_139

    const/16 v0, 0x45

    :goto_4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_13c

    move v0, v2

    :goto_55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_140

    const/16 v0, 0x48

    :goto_60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_143

    move v0, v3

    :goto_6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_146

    const/16 v0, 0x43

    :goto_75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_149

    const/16 v0, 0x4c

    :goto_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_14c

    :goto_8c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_14f

    const/16 v0, 0x53

    :goto_97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_a2

    const/16 v2, 0x50

    :cond_a2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 727
    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 732
    const/4 v0, -0x1

    if-eq v1, v0, :cond_118

    .line 733
    const-string/jumbo v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 736
    if-eqz v1, :cond_118

    if-eqz v2, :cond_118

    .line 739
    const/high16 v0, -0x1000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_16a

    .line 747
    :try_start_f1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    :goto_f5
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 751
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 752
    const-string/jumbo v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string/jumbo v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string/jumbo v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_118
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f1 .. :try_end_118} :catch_15a

    .line 762
    :cond_118
    :goto_118
    const-string/jumbo v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 707
    :sswitch_123
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 708
    :sswitch_128
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 709
    :sswitch_12f
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :cond_136
    move v0, v2

    .line 712
    goto/16 :goto_40

    :cond_139
    move v0, v2

    .line 713
    goto/16 :goto_4b

    .line 714
    :cond_13c
    const/16 v0, 0x44

    goto/16 :goto_55

    :cond_140
    move v0, v2

    .line 715
    goto/16 :goto_60

    :cond_143
    move v0, v2

    .line 716
    goto/16 :goto_6a

    :cond_146
    move v0, v2

    .line 717
    goto/16 :goto_75

    :cond_149
    move v0, v2

    .line 718
    goto/16 :goto_80

    :cond_14c
    move v1, v2

    .line 720
    goto/16 :goto_8c

    :cond_14f
    move v0, v2

    .line 721
    goto/16 :goto_97

    .line 741
    :sswitch_152
    :try_start_152
    const-string/jumbo v0, "app"

    goto :goto_f5

    .line 744
    :sswitch_156
    const-string/jumbo v0, "android"
    :try_end_159
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_152 .. :try_end_159} :catch_15a

    goto :goto_f5

    .line 758
    :catch_15a
    move-exception v0

    goto :goto_118

    .line 706
    :sswitch_data_15c
    .sparse-switch
        0x0 -> :sswitch_123
        0x4 -> :sswitch_128
        0x8 -> :sswitch_12f
    .end sparse-switch

    .line 739
    :sswitch_data_16a
    .sparse-switch
        0x1000000 -> :sswitch_156
        0x7f000000 -> :sswitch_152
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 788
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_12

    .line 789
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 790
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 791
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 801
    :cond_11
    :goto_11
    return-void

    .line 793
    :cond_12
    if-eqz p1, :cond_11

    .line 798
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->p()V

    .line 799
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->c(Z)V

    goto :goto_11
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    .line 685
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 687
    const-string/jumbo v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 694
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 696
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 698
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 645
    .line 646
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 647
    if-eqz v0, :cond_b

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->a:Ljava/lang/Object;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->b()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->c()V

    .line 151
    shr-int/lit8 v0, p1, 0x10

    .line 152
    if-eqz v0, :cond_4f

    .line 153
    add-int/lit8 v1, v0, -0x1

    .line 155
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->c(I)V

    .line 157
    if-nez v0, :cond_24

    .line 158
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_23
    return-void

    .line 161
    :cond_24
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentController;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 162
    if-nez v1, :cond_47

    .line 163
    const-string/jumbo v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 165
    :cond_47
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_23

    .line 170
    :cond_4f
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_23
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    .prologue
    .line 829
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->c()Z

    move-result v0

    if-nez v0, :cond_f

    .line 180
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onBackPressed()V

    .line 182
    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->a(Landroid/content/res/Configuration;)V

    .line 307
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->a(Landroid/support/v4/app/Fragment;)V

    .line 317
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreate(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 321
    if-eqz v0, :cond_19

    .line 322
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    iget-object v4, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->c:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->a(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 324
    :cond_19
    if-eqz p1, :cond_5c

    .line 325
    const-string/jumbo v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 326
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    if-eqz v0, :cond_6f

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->b:Landroid/support/v4/app/FragmentManagerNonConfig;

    :goto_28
    invoke-virtual {v4, v3, v0}, Landroid/support/v4/app/FragmentController;->a(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 329
    const-string/jumbo v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 330
    const-string/jumbo v0, "android:support:next_request_index"

    .line 331
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 332
    const-string/jumbo v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 333
    const-string/jumbo v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 334
    if-eqz v1, :cond_53

    if-eqz v3, :cond_53

    array-length v0, v1

    array-length v4, v3

    if-eq v0, v4, :cond_71

    .line 336
    :cond_53
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v1, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_5c
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_69

    .line 347
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 348
    iput v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 351
    :cond_69
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->f()V

    .line 352
    return-void

    :cond_6f
    move-object v0, v1

    .line 326
    goto :goto_28

    .line 338
    :cond_71
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    array-length v4, v1

    invoke-direct {v0, v4}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move v0, v2

    .line 339
    :goto_7a
    array-length v4, v1

    if-ge v0, v4, :cond_5c

    .line 340
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    aget v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6

    .prologue
    .line 359
    if-nez p1, :cond_1a

    .line 360
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 361
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentController;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 362
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    .line 370
    :goto_17
    return v0

    .line 368
    :cond_18
    const/4 v0, 0x1

    goto :goto_17

    .line 370
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_17
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 384
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onDestroy()V

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 388
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->m()V

    .line 389
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->q()V

    .line 390
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 397
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onLowMemory()V

    .line 398
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->n()V

    .line 399
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 406
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 407
    const/4 v0, 0x1

    .line 418
    :goto_7
    return v0

    .line 410
    :cond_8
    sparse-switch p1, :sswitch_data_1c

    .line 418
    const/4 v0, 0x0

    goto :goto_7

    .line 412
    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 415
    :sswitch_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 410
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->a(Z)V

    .line 284
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onNewIntent(Landroid/content/Intent;)V

    .line 462
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->c()V

    .line 463
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_e

    .line 432
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPanelClosed(ILandroid/view/Menu;)V

    .line 433
    return-void

    .line 429
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->b(Landroid/view/Menu;)V

    goto :goto_3

    .line 427
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 440
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPause()V

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 442
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 443
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 446
    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->j()V

    .line 447
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->b(Z)V

    .line 298
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 494
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPostResume()V

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 497
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->o()Z

    .line 498
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    .prologue
    .line 515
    if-nez p1, :cond_1d

    if-eqz p3, :cond_1d

    .line 516
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v0, :cond_11

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 518
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 519
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 521
    :cond_11
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 522
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentController;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 525
    :goto_1c
    return v0

    :cond_1d
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_1c
.end method

.method onReallyStop()V
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->c(Z)V

    .line 813
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->l()V

    .line 814
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    .prologue
    const v3, 0xffff

    .line 894
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v3

    .line 895
    if-eqz v0, :cond_22

    .line 896
    add-int/lit8 v1, v0, -0x1

    .line 898
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 899
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->c(I)V

    .line 900
    if-nez v0, :cond_23

    .line 901
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_22
    :goto_22
    return-void

    .line 904
    :cond_23
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentController;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 905
    if-nez v1, :cond_46

    .line 906
    const-string/jumbo v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 908
    :cond_46
    and-int v0, p1, v3

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_22
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 483
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onResume()V

    .line 484
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 486
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->o()Z

    .line 487
    return-void
.end method

.method protected onResumeFragments()V
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->i()V

    .line 508
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 542
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_8

    .line 543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 546
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 548
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->e()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v2

    .line 549
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->s()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v3

    .line 551
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    if-nez v1, :cond_20

    .line 552
    const/4 v0, 0x0

    .line 559
    :goto_1f
    return-object v0

    .line 555
    :cond_20
    new-instance v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 556
    iput-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->a:Ljava/lang/Object;

    .line 557
    iput-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->b:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 558
    iput-object v3, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->c:Landroid/support/v4/util/SimpleArrayMap;

    goto :goto_1f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 568
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_11

    .line 570
    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-lez v0, :cond_5d

    .line 573
    const-string/jumbo v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    new-array v2, v0, [I

    .line 576
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 577
    const/4 v0, 0x0

    move v1, v0

    :goto_33
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 578
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->e(I)I

    move-result v0

    aput v0, v2, v1

    .line 579
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 577
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    .line 581
    :cond_51
    const-string/jumbo v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 582
    const-string/jumbo v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    :cond_5d
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 592
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onStart()V

    .line 594
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 595
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 596
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_19

    .line 599
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 600
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->g()V

    .line 603
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->c()V

    .line 604
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->o()Z

    .line 606
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->p()V

    .line 610
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->h()V

    .line 611
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->r()V

    .line 612
    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->c()V

    .line 470
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 619
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onStop()V

    .line 621
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 622
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 624
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->k()V

    .line 625
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2

    .prologue
    .line 240
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 241
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2

    .prologue
    .line 253
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->b(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 254
    return-void
.end method

.method public final setSupportMediaController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .registers 4

    .prologue
    .line 201
    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 203
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 205
    :cond_f
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 851
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_a

    .line 852
    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    .line 853
    invoke-static {p2}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 856
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;I)V

    .line 857
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 919
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 928
    if-ne p3, v1, :cond_e

    .line 929
    const/4 v0, -0x1

    :try_start_8
    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    .line 937
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 939
    :goto_d
    return-void

    .line 932
    :cond_e
    :try_start_e
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 933
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 934
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_24

    .line 937
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    goto :goto_d

    :catchall_24
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    throw v0
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 7

    .prologue
    .line 75
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 75
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17

    .prologue
    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 949
    const/4 v0, -0x1

    if-ne p3, v0, :cond_16

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    .line 950
    :try_start_f
    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_36

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 962
    :goto_15
    return-void

    .line 954
    :cond_16
    :try_start_16
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 955
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 956
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int v2, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_36

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    goto :goto_15

    :catchall_36
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .registers 1

    .prologue
    .line 228
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->b(Landroid/app/Activity;)V

    .line 229
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 3

    .prologue
    .line 658
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 661
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->a(Landroid/app/Activity;)V

    .line 668
    :goto_9
    return-void

    .line 667
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    goto :goto_9
.end method

.method public supportPostponeEnterTransition()V
    .registers 1

    .prologue
    .line 261
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->c(Landroid/app/Activity;)V

    .line 262
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .registers 1

    .prologue
    .line 269
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->d(Landroid/app/Activity;)V

    .line 270
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .registers 3

    .prologue
    .line 868
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 870
    invoke-static {p1}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 872
    :cond_a
    return-void
.end method
