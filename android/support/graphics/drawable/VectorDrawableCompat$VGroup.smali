.class Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Matrix;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private final j:Landroid/graphics/Matrix;

.field private k:I

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b:Landroid/graphics/Matrix;

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    .line 1139
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    .line 1140
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    .line 1141
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    .line 1142
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    .line 1143
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    .line 1144
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    .line 1145
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    .line 1149
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    .line 1152
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    .line 1195
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b:Landroid/graphics/Matrix;

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    .line 1139
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    .line 1140
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    .line 1141
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    .line 1142
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    .line 1143
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    .line 1144
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    .line 1145
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    .line 1149
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    .line 1152
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    .line 1155
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    .line 1156
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    .line 1157
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    .line 1158
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    .line 1159
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    .line 1160
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    .line 1161
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    .line 1162
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->l:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->l:[I

    .line 1163
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    .line 1164
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->k:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->k:I

    .line 1165
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 1166
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :cond_5d
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1171
    iget-object v3, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    .line 1172
    const/4 v0, 0x0

    move v1, v0

    :goto_68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b7

    .line 1173
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1174
    instance-of v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v2, :cond_86

    .line 1175
    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1176
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v4, v0, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_82
    :goto_82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_68

    .line 1179
    :cond_86
    instance-of v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    if-eqz v2, :cond_a1

    .line 1180
    new-instance v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    invoke-direct {v2, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V

    move-object v0, v2

    .line 1186
    :goto_92
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->n:Ljava/lang/String;

    if-eqz v2, :cond_82

    .line 1188
    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->n:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 1181
    :cond_a1
    instance-of v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    if-eqz v2, :cond_ae

    .line 1182
    new-instance v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    invoke-direct {v2, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V

    move-object v0, v2

    goto :goto_92

    .line 1184
    :cond_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1192
    :cond_b7
    return-void
.end method

.method static synthetic a(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)I
    .registers 2

    .prologue
    .line 1130
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->k:I

    return v0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .prologue
    .line 1217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->l:[I

    .line 1220
    const-string/jumbo v0, "rotation"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    .line 1223
    const/4 v0, 0x1

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    .line 1224
    const/4 v0, 0x2

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    .line 1227
    const-string/jumbo v0, "scaleX"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    .line 1231
    const-string/jumbo v0, "scaleY"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    .line 1234
    const-string/jumbo v0, "translateX"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    .line 1236
    const-string/jumbo v0, "translateY"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    .line 1239
    const/4 v0, 0x0

    .line 1240
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_5a

    .line 1242
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    .line 1245
    :cond_5a
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b()V

    .line 1246
    return-void
.end method

.method static synthetic b(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 1130
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1251
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1252
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1253
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1254
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1255
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1256
    return-void
.end method

.method static synthetic c(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 1130
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .prologue
    .line 1206
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1208
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1210
    return-void
.end method
