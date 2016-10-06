.class public Landroid/transition/Slide;
.super Landroid/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Slide$CalculateSlide;,
        Landroid/transition/Slide$CalculateSlideHorizontal;,
        Landroid/transition/Slide$CalculateSlideVertical;,
        Landroid/transition/Slide$1;,
        Landroid/transition/Slide$2;,
        Landroid/transition/Slide$3;,
        Landroid/transition/Slide$4;,
        Landroid/transition/Slide$5;,
        Landroid/transition/Slide$6;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final TAG:Ljava/lang/String; = "Slide"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Landroid/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

.field private mSlideEdge:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/transition/Slide$1;

    invoke-direct {v0}, Landroid/transition/Slide$1;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    new-instance v0, Landroid/transition/Slide$2;

    invoke-direct {v0}, Landroid/transition/Slide$2;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    new-instance v0, Landroid/transition/Slide$3;

    invoke-direct {v0}, Landroid/transition/Slide$3;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    new-instance v0, Landroid/transition/Slide$4;

    invoke-direct {v0}, Landroid/transition/Slide$4;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    new-instance v0, Landroid/transition/Slide$5;

    invoke-direct {v0}, Landroid/transition/Slide$5;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    new-instance v0, Landroid/transition/Slide$6;

    invoke-direct {v0}, Landroid/transition/Slide$6;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x50

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iput v1, p0, Landroid/transition/Slide;->mSlideEdge:I

    invoke-virtual {p0, v1}, Landroid/transition/Slide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "slideEdge"    # I

    .prologue
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    invoke-virtual {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x50

    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v2, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v2, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iput v3, p0, Landroid/transition/Slide;->mSlideEdge:I

    sget-object v2, Lcom/android/internal/R$styleable;->Slide:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .local v1, "edge":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/transition/Slide;->setSlideEdge(I)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, "position":[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:slide:screenPosition"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public getSlideEdge()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .local v10, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .local v6, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .local v7, "endY":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    .local v4, "startX":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    .local v5, "startY":F
    const/4 v0, 0x0

    aget v2, v10, v0

    const/4 v0, 0x1

    aget v3, v10, v0

    sget-object v8, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .local v10, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .local v4, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .local v5, "startY":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v6

    .local v6, "endX":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    .local v7, "endY":F
    const/4 v0, 0x0

    aget v2, v10, v0

    const/4 v0, 0x1

    aget v3, v10, v0

    sget-object v8, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public setSlideEdge(I)V
    .locals 3
    .param p1, "slideEdge"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid slide direction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    sget-object v1, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    :goto_0
    iput p1, p0, Landroid/transition/Slide;->mSlideEdge:I

    new-instance v0, Landroid/transition/SidePropagation;

    invoke-direct {v0}, Landroid/transition/SidePropagation;-><init>()V

    .local v0, "propagation":Landroid/transition/SidePropagation;
    invoke-virtual {v0, p1}, Landroid/transition/SidePropagation;->setSide(I)V

    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setPropagation(Landroid/transition/TransitionPropagation;)V

    return-void

    .end local v0    # "propagation":Landroid/transition/SidePropagation;
    :sswitch_1
    sget-object v1, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    goto :goto_0

    :sswitch_2
    sget-object v1, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    goto :goto_0

    :sswitch_3
    sget-object v1, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    goto :goto_0

    :sswitch_4
    sget-object v1, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    goto :goto_0

    :sswitch_5
    sget-object v1, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method
